<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCyclesTable extends Migration
{

    public function up()
    {
        Schema::create('cycles', function (Blueprint $table) {
            $table->id();
            $table->integer('stage');
            $table->integer('month');
            $table->integer('year');
            $table->dateTime('send_date', 0);
            $table->dateTime('arrival_date', 0);
            $table->dateTime('due_date', 0);
            $table->dateTime('return_date', 0);
            $table->boolean('is_active');
            $table->integer('companies_id')->unsigned();
            $table->foreign('companies_id')->references('id')->on('companies');
            $table->integer('account_id')->unsigned();
            $table->foreign('account_id')->references('id')->on('accounts');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('cycles');
    }
}
