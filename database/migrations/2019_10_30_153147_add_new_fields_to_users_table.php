<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddNewFieldsToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('username', 30)->unique()->after('id');
            $table->integer('community_id')->nullable()->after('email');
            $table->string('phone_number')->nullable()->after('community_id');
            $table->date('dob')->nullable()->after('phone_number');
            $table->string('gender', 6)->nullable()->after('dob');
            $table->string('verification_code')->nullable()->after('gender');
            $table->boolean('verification_status')->default(1)->after('verification_code');
            $table->boolean('is_active')->default(1)->after('verification_status');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('username');
            $table->dropColumn('community_id');
            $table->dropColumn('phone_number');
            $table->dropColumn('dob');
            $table->dropColumn('verification_code');
            $table->dropColumn('verification_status');
            $table->dropColumn('is_active');
        });
    }
}
