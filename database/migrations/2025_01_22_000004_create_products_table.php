<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('title', 250);
            $table->string('sku', 50);
            $table->unsignedBigInteger('categorie_id');
            $table->string('imagen', 250);
            $table->double('price_general');
            $table->double('price_company');
            $table->longText('description')->nullable();
            $table->tinyInteger('is_discount')->unsigned()->default(1)->comment('1 es inactivo y 2 activo');
            $table->double('max_discount')->default(0);
            $table->tinyInteger('disponiblidad')->unsigned()->default(1)->comment('1 es venta sin stock , 2 venta con stock');
            $table->tinyInteger('state')->unsigned()->default(1)->comment('1 es activo y 2 inactivo');
            $table->string('unidad_medida', 25);
            $table->double('stock')->default(0);
            $table->tinyInteger('include_igv')->unsigned()->default(1)->comment('1 no 2 si');
            $table->tinyInteger('is_icbper')->unsigned()->default(1)->comment('1 no y 2 si ');
            $table->tinyInteger('is_ivap')->unsigned()->default(1)->comment('1 no y 2 si');
            $table->double('percentage_isc')->default(0);
            $table->tinyInteger('is_especial_nota')->unsigned()->default(1)->comment('1 es no y 2 si');
            $table->timestamps();
            $table->softDeletes();
            
            $table->foreign('categorie_id')->references('id')->on('categories');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
