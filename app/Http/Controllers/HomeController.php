<?php

namespace App\Http\Controllers;


use Alaouy\Youtube\Facades\Youtube;
//use Alaouy\Youtube\Youtube;
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
            'maxResults' => 10,
        );

        $videoList = Youtube::searchAdvanced($params, true);
        $videoF = array_pop($videoList['results']);
        $id_video = $videoF->id->videoId;
        $video = Youtube::getVideoInfo($id_video);
        dd($video);
        if (isset($videoList['info']['nextPageToken'])) {
            $params['pageToken'] = $videoList['info']['nextPageToken'];
        }

//        dd($videoList);
        return view('home', ['data' => $videoList]);
    }
}
