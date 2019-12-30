<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLostFoundTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('lost_founds', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('community_id')->nullable();
            $table->integer('user_id')->nullable();
            $table->integer('user_id_collected')->nullable();
            $table->string('title')->nullable();
            $table->string('address')->nullable();
            $table->string('name')->nullable();
            $table->string('phone')->nullable();
            $table->string('email')->nullable();
            $table->string('picture')->nullable();
            $table->string('video')->nullable();
            $table->enum('type', ['lost', 'found'])->default('lost');
            $table->enum('status', ['pending', 'collected', 'closed'])->default('pending');
            $table->text('detail')->nullable();
            $table->timestamp('date')->nullable();
            $table->timestamp('date_collected')->nullable();
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
        Schema::dropIfExists('lost_founds');
    }
}
