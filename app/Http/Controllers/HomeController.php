<?php

namespace App\Http\Controllers;


use Alaouy\Youtube\Facades\Youtube;
//use Alaouy\Youtube\Youtube;
use App\WowVideo;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $channel = 'UCuPfUet3Sypl_hz8vDDN4Kw';


        $params = array(
            'type' => 'video',
            'channelId' => $channel,
            'part' => implode(', ', ['id', 'snippet']),
            'maxResults' => 50,
        );

        $videoList = Youtube::searchAdvanced($params, true);
//        $videoList = Youtube::listChannelVideos($channel);
        $allVideo = $videoList['results'];
//        $video = Youtube::getVideoInfo($id_video);

        while ($videoList['info']['nextPageToken']){
            $params['pageToken'] = $videoList['info']['nextPageToken'];
            $videoList = Youtube::searchAdvanced($params, true);
            if (is_array($videoList['results'])){
                $allVideo = array_merge($allVideo,$videoList['results']);
            }
        }
        foreach ($allVideo as $video){
            $info = Youtube::getVideoInfo($video->id->videoId);
//            dd($info);
            $fields = [
                'id_video' => $info->id,
                'title' => $info->snippet->title,
                'date_upload' => new \DateTime($info->snippet->publishedAt),
                'like' => $info->statistics->likeCount,
                'dislike' => $info->statistics->dislikeCount ,
                'comment'=> $info->statistics->commentCount,
                'favorite' => $info->statistics->commentCount,
                'view' => $info->statistics->viewCount,
            ];
            $exist = WowVideo::where('id_video', $info->id)->update($fields);
            if (!$exist){
                WowVideo::Create($fields);
            }
        }


//        dd($videoList);
        return view('home', ['data' => $videoList]);
    }
}
