<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCatalogsTable extends Migration
{
    public function up()
    {
        Schema::create('catalogs', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('slug', 2);
            $table->longText('link_cover');
            $table->longText('link_archive');
            $table->decimal('percent', 10,2);
            $table->integer('provider_id')->unsigned();
            $table->foreign('provider_id')->references('id')->on('providers');
            $table->boolean('is_active');
            $table->boolean('is_import');
            $table->integer('companies_id')->unsigned();
            $table->foreign('companies_id')->references('id')->on('companies');
            $table->integer('account_id')->unsigned();
            $table->foreign('account_id')->references('id')->on('accounts');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('catalogs');
    }
}
