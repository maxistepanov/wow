<?php

namespace App\Http\Controllers;

use Alaouy\Youtube\Facades\Youtube;
use ConsoleTVs\Charts\Facades\Charts;
use Illuminate\Http\Request;


class ChartController extends Controller
{
    //
    public function index()
    {
        $chart = Charts::multi('bar', 'material')
            // Setup the chart settings
            ->title("My Cool Chart")
            // A dimension of 0 means it will take 100% of the space
            ->dimensions(0, 400) // Width x Height
            // This defines a preset of colors already done:)
            ->template("material")
            // You could always set them manually
            // ->colors(['#2196F3', '#F44336', '#FFC107'])
            // Setup the diferent datasets (this is a multi chart)
            ->dataset('Element 1', [5,20,100])
            ->dataset('Element 2', [15,30,80])
            ->dataset('Element 3', [25,10,40])
            // Setup what the values mean
            ->labels(['One', 'Two', 'Three']);

        $secondChart = Charts::create('donut', 'highcharts')
            ->title('My nice chart')
            ->labels(['First', 'Second', 'Third'])
            ->values([5,10,20])
            ->dimensions(1000,500)
            ->responsive(false);

        $list = Youtube::getPlaylistsByChannelId(env('WOW_HOW_CHANNEL'), ['maxResults' => 15]);
//        $playList = Youtube::getPlaylistItemsByPlaylistId('PL6vb-TccfA0VqTUMFKvLFUP1bSH9nkzno');
//        dd($playList);
        dd($list);


        return view('chart', ['chart' => $secondChart]);
    }
}
