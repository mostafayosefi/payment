<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddPricefieldToFormDataLists extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('form_data_lists', function (Blueprint $table) {
            $table->string('status')->after('user_id')->default('inactive');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('form_data_lists', function (Blueprint $table) {
            $table->dropColumn('price');
            $table->dropColumn('status');
        });
    }
}
