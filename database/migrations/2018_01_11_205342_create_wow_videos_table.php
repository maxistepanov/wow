<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWowVideosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wow_videos', function (Blueprint $table) {
            $table->increments('id');
            $table->string('id_video');
            $table->string('title');
            $table->integer('view');
            $table->integer('like');
            $table->integer('dislike');
            $table->integer('favorite');
            $table->integer('comment');
            $table->date('date_upload');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('wow_videos');
    }
}
