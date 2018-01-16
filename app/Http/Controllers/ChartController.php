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
        $charts = [];

        array_push($charts,self::top5video());
        array_push($charts,self::areaSpline());
        array_push($charts,self::areaSpline(false,false,true, 'Most viewed video'));
        array_push($charts,self::likeDislikeBar());
        array_push($charts,self::videoByTypes());


        return view('chart', ['charts' => $charts]);
    }

    public static function top5video(){
        $topFive = WowVideo::whereYear('date_upload','>=','2017')
            ->orderBy('like','desc')->paginate(10);
        $title = [];
        $likes = [];

        foreach ($topFive as $item){
            array_push($title, htmlspecialchars($item->title));
            array_push($likes, $item->like);
        }

        return Charts::create('pie', 'highcharts')
            ->title('Top 10 popular video')
            ->labels(array_values($title))
            ->values(array_values($likes))
            ->dimensions(1000,500)
            ->responsive(true);
    }

    public static function areaSpline($withLike = true, $withDislike = true, $withViews = false,$chartTitle = 'Top 20 video like/dislike order by upload'){
        $allVideo = WowVideo::whereYear('date_upload','>=','2017')
            ->orderBy('like', 'desc')
            ->orderBy('date_upload', 'asc')
            ->paginate(20);
        $views = [];
        $like = [];
        $dislike = [];
        $title = [];
        foreach ($allVideo as $video){
            array_push($title, htmlspecialchars($video->title));
            array_push($like, $video->like);
            array_push($dislike, $video->dislike);
            array_push($views, $video->view);
        }

        $area = Charts::multi('areaspline', 'highcharts')
            ->title($chartTitle)
            ->colors(['#0080008f', '#0000ff94', '#daea129e'])
            ->elementLabel('Like')
            ->responsive(false)
            ->labels(array_values(array_reverse($title)));
        if ($withLike) $area->dataset('Like', array_values($like));
        if ($withDislike) $area->dataset('Dislike',  array_values($dislike));
        if ($withViews) $area->dataset('Views',  array_values(array_reverse($views)));


        return $area;
    }

    public static function likeDislikeBar(){
        $like = 0;
        $dislike = 0;
        $videos = WowVideo::all();

        foreach ($videos as $video){
            $like+= $video->like;
            $dislike+= $video->dislike;
        }

        return Charts::create('bar', 'highcharts')
            ->title('Like/Dislike bar')
            ->colors(['green','red'])
            ->labels(['like', 'dislike'])
            ->values([$like, $dislike])
            ->dimensions(1000,500)
            ->responsive(true);
    }

    public static function videoByTypes(){
        $data = Playlist::with('videos')
            ->whereNotIn('title',['Showreels','WOW-HOW','portfolio'])
            ->get();
        $labeles = [];
        $values = [];
        foreach ($data as $list){
            if (count($list->videos)){

                array_push($labeles, $list->title);
                array_push($values, count($list->videos));
            }
        }

        return Charts::create('donut', 'highcharts')
            ->title('Video by types')
            ->labels(array_values($labeles))
            ->values(array_values($values))
            ->dimensions(1000,500)
            ->responsive(true);
    }

    public static function initPlaylistWithVideo(){
        $lists = Youtube::getPlaylistsByChannelId(env('WOW_HOW_CHANNEL'), ['maxResults' => 15]);
        foreach ($lists['results'] as $list) {
            Playlist::firstOrCreate([
                'playlist_id' => $list->id,
                'title' => $list->snippet->title,
            ]);
            $playlistItems = Youtube::getPlaylistItemsByPlaylistId($list->id);
            foreach ($playlistItems['results'] as $item) {
                WowVideo::where('id_video', $item->snippet->resourceId->videoId)
                    ->update(['playlist_id' => $list->id]);

            }

        }
    }
}
