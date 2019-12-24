<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVisitorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('visitors', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('invited_by_type')->nullable();
            $table->integer('invited_by')->nullable();
            $table->string('invited_to_type')->nullable();
            $table->string('vehicle_no')->nullable();
            $table->string('person_name')->nullable();
            $table->string('person_phone')->nullable();
            $table->string('person_email')->nullable();
            $table->string('status')->default('waiting');
            $table->string('admin_status')->default('approved');
            $table->longText('data')->nullable();
            $table->date('date')->nullable();
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
        Schema::dropIfExists('visitors');
    }
}
