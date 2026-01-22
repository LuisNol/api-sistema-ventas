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
        Schema::create('guia_remisions', function (Blueprint $table) {
            $table->id();
            $table->string('serie', 50)->nullable();
            $table->unsignedBigInteger('correlativo')->nullable();
            $table->string('n_operacion', 125)->nullable();
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('client_id');
            $table->smallInteger('type_client')->default(1)->comment('1 es cliente final, 2 es cliente empresa');
            $table->double('total')->default(0);
            $table->double('quantity_total');
            $table->string('motivo_translado', 5);
            $table->string('num_dam', 150)->nullable();
            $table->smallInteger('type_transport')->default(1)->comment('1 es publico, 2 es privado');
            $table->json('punto_partida')->nullable();
            $table->json('punto_llegada')->nullable();
            $table->json('transporte_datos')->nullable();
            $table->json('conductor_datos')->nullable();
            $table->text('description')->nullable();
            $table->string('cdr', 250)->nullable();
            $table->string('xml', 250)->nullable();
            $table->datetime('created_at')->nullable();
            $table->datetime('updated_at')->nullable();
            $table->softDeletes();
            
            $table->unique('n_operacion', 'noperacion_guia_remisions');
            $table->unique(['serie', 'correlativo'], 'guia_remision_serie_correlativo');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('guia_remisions');
    }
};
