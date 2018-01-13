<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Playlist extends Model
{
    //
    protected $guarded = ['id'];

    public function videos(){

        return $this->hasMany(WowVideo::class,'playlist_id', 'playlist_id');
    }
}
