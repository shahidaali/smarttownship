<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAddressesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('addresses', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('community_id')->nullable();
            $table->integer('address_type_id')->nullable();
            $table->string('name')->nullable();
            $table->integer('house')->nullable();
            $table->integer('story')->nullable();
            $table->integer('flat')->nullable();
            $table->string('street')->nullable();
            $table->string('block')->nullable();
            $table->double('longitude')->nullable();
            $table->double('latitude')->nullable();
            $table->text('address')->nullable();
            $table->integer('bedroom')->nullable();
            $table->integer('bath')->nullable();
            $table->integer('garage')->nullable();
            $table->double('area')->nullable();
            $table->enum('area_unit', ['sq_ft'])->default('sq_ft');
            $table->boolean('has_ground_floor')->default(0);
            $table->string('status')->default('active');
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
        Schema::dropIfExists('addresses');
    }
}
