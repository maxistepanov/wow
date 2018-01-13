<?php

namespace App\Http\Controllers;

use Alaouy\Youtube\Facades\Youtube;
use App\Playlist;
use App\WowVideo;
use ConsoleTVs\Charts\Facades\Charts;
use Illuminate\Http\Request;


class ChartController extends Controller
{
    //
    public function index()
    {
        // Video by playlist
        $data = Playlist::with('videos')->get();
        $labeles = [];
        $values = [];
        foreach ($data as $list){
            if (count($list->videos)){

                array_push($labeles, $list->title);
                array_push($values, count($list->videos));
            }
        }

        $chart = Charts::create('donut', 'highcharts')
            ->title('Video by playlist')
            ->labels(array_values($labeles))
            ->values(array_values($values))
            ->dimensions(1000,500)
            ->responsive(false);


        // like/dislike bar
        $like = 0;
        $dislike = 0;
        $videos = WowVideo::all();

        foreach ($videos as $video){
           $like+= $video->like;
           $dislike+= $video->dislike;
        }

        $likes = Charts::create('bar', 'highcharts')
            ->title('Like/Dislike bar')
            ->colors(['green','red'])
            ->labels(['like', 'dislike'])
            ->values([$like, $dislike])
            ->dimensions(1000,500)
            ->responsive(false);


        // get playlists and data
//        $lists = Youtube::getPlaylistsByChannelId(env('WOW_HOW_CHANNEL'), ['maxResults' => 15]);
//        foreach ($lists['results'] as $list) {
//            Playlist::firstOrCreate([
//                'playlist_id' => $list->id,
//                'title' => $list->snippet->title,
//            ]);
//            $playlistItems = Youtube::getPlaylistItemsByPlaylistId($list->id);
//            foreach ($playlistItems['results'] as $item) {
//                WowVideo::where('id_video', $item->snippet->resourceId->videoId)
//                    ->update(['playlist_id' => $list->id]);
//
//            }
//
//            }
        return view('chart', ['chart' => $likes]);
    }
}
