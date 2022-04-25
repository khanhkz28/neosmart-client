<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBlogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('blog', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('title')->unique();
            $table->string('description');
            $table->text('content');
            $table->text('photo');
            $table->tinyInteger('display')->default(1);
            $table->tinyInteger('position')->default(0);
            $table->unsignedBigInteger('listblog_id');
            $table->foreign('listblog_id')
                ->references('id')
                ->on('listblog')
                ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('blog');
    }
}
