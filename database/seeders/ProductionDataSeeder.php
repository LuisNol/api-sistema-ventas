<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductionDataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Insertar categorías
        DB::table('categories')->insert([
            ['id' => 1, 'title' => 'Soporte Técnico', 'imagen' => 'categories/xSnZvVKQCIxvsI4LDBzNQxI1PpiV8AypmvpTThCD.png', 'state' => 1, 'created_at' => '2025-06-13 03:29:22', 'updated_at' => '2025-06-13 03:29:22'],
            ['id' => 2, 'title' => 'Alimentos', 'imagen' => 'categories/VIRjkl7WUCCttClfBLnyHd6KyWBk8JooWvhNREC7.png', 'state' => 1, 'created_at' => '2025-06-13 03:32:29', 'updated_at' => '2025-06-13 03:32:29'],
            ['id' => 3, 'title' => 'Mascotas 2026', 'imagen' => 'categories/Ta809TIekwzl4yIVmDL7RNJGzQZ3QJTocRb8GdSr.png', 'state' => 1, 'created_at' => '2025-06-13 03:33:33', 'updated_at' => '2025-07-09 01:57:59'],
            ['id' => 4, 'title' => 'Otros', 'imagen' => 'categories/y4nr68tvY97MQnFkr6WtCXWDdNB8hlP2DjAR6qqi.png', 'state' => 1, 'created_at' => '2025-07-18 00:00:59', 'updated_at' => '2025-07-18 00:00:59'],
        ]);

        // Insertar empresas
        DB::table('companies')->insert([
            [
                'id' => 1,
                'razon_social' => 'Laravest Sac. TEC',
                'razon_social_comercial' => 'Laravest',
                'phone' => '958962565',
                'email' => 'echodeveloper960@gmail.com',
                'n_document' => '20161515648',
                'birth_date' => '2025-04-29 05:00:00',
                'address' => 'Peru',
                'urbanizacion' => 'Av. Primavera 2711, Santiago de Surco 25884',
                'cod_local' => '0000',
                'ubigeo_distrito' => '150101',
                'ubigeo_provincia' => '1501',
                'ubigeo_region' => '15',
                'distrito' => 'Lima',
                'provincia' => 'Lima',
                'region' => 'Lima',
                'created_at' => '2025-04-30 00:37:01',
                'updated_at' => '2025-06-13 02:41:48',
            ],
        ]);

        // Insertar roles
        DB::table('roles')->insert([
            ['id' => 1, 'name' => 'Super-Admin', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 2, 'name' => 'Asesor Comercial', 'guard_name' => 'api', 'created_at' => '2025-06-06 08:24:42', 'updated_at' => '2025-06-06 08:24:42'],
            ['id' => 3, 'name' => 'Administrador de Sede', 'guard_name' => 'api', 'created_at' => '2025-06-06 08:27:44', 'updated_at' => '2025-06-06 08:27:44'],
            ['id' => 4, 'name' => 'Contador', 'guard_name' => 'api', 'created_at' => '2025-06-06 08:30:05', 'updated_at' => '2025-06-06 08:30:05'],
        ]);

        // Insertar permisos
        DB::table('permissions')->insert([
            ['id' => 1, 'name' => 'dashboard', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 2, 'name' => 'register_role', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 3, 'name' => 'list_role', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 4, 'name' => 'edit_role', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 5, 'name' => 'delete_role', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 6, 'name' => 'register_user', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 7, 'name' => 'list_user', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 8, 'name' => 'edit_user', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 9, 'name' => 'delete_user', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 10, 'name' => 'register_categorie', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 11, 'name' => 'edit_categorie', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 12, 'name' => 'delete_categorie', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 13, 'name' => 'list_categorie', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 14, 'name' => 'register_product', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 15, 'name' => 'list_product', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 16, 'name' => 'edit_product', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 17, 'name' => 'delete_product', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 18, 'name' => 'register_client', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 19, 'name' => 'list_client', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 20, 'name' => 'edit_client', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 21, 'name' => 'delete_client', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 22, 'name' => 'register_sale', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 23, 'name' => 'list_sale', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 24, 'name' => 'edit_sale', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 25, 'name' => 'delete_sale', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 26, 'name' => 'register_guia_remision', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 27, 'name' => 'list_guia_remision', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 28, 'name' => 'nota_electronica', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
            ['id' => 29, 'name' => 'list_nota_electronica', 'guard_name' => 'api', 'created_at' => '2025-06-06 05:53:53', 'updated_at' => '2025-06-06 05:53:53'],
        ]);

        // Asignar permisos a roles
        DB::table('role_has_permissions')->insert([
            ['permission_id' => 2, 'role_id' => 2],
            ['permission_id' => 3, 'role_id' => 2],
            ['permission_id' => 10, 'role_id' => 3],
            ['permission_id' => 12, 'role_id' => 3],
            ['permission_id' => 13, 'role_id' => 3],
            ['permission_id' => 14, 'role_id' => 3],
            ['permission_id' => 15, 'role_id' => 3],
            ['permission_id' => 16, 'role_id' => 3],
            ['permission_id' => 17, 'role_id' => 3],
            ['permission_id' => 18, 'role_id' => 3],
            ['permission_id' => 19, 'role_id' => 3],
            ['permission_id' => 20, 'role_id' => 3],
            ['permission_id' => 22, 'role_id' => 4],
            ['permission_id' => 23, 'role_id' => 4],
            ['permission_id' => 24, 'role_id' => 4],
            ['permission_id' => 25, 'role_id' => 4],
            ['permission_id' => 28, 'role_id' => 4],
            ['permission_id' => 29, 'role_id' => 4],
        ]);
    }
}
