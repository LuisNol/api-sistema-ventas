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
        Schema::create('guia_remision_details', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('guia_remision_id');
            $table->unsignedBigInteger('product_id');
            $table->unsignedBigInteger('product_categorie_id');
            $table->string('unidad_medida', 25);
            $table->double('quantity')->default(1);
            $table->double('peso')->default(0);
            $table->double('total')->default(0);
            $table->text('description')->nullable();
            $table->datetime('created_at')->nullable();
            $table->datetime('updated_at')->nullable();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('guia_remision_details');
    }
};
