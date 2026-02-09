# API Sistema de Ventas

## Inicio rápido (comandos Laravel)

Sigue estos pasos para poner en marcha la API en un entorno de desarrollo:

1. Instalar dependencias:

```bash
composer install
```

2. Copiar y configurar variables de entorno:

```bash
cp .env.example .env
# Edita .env: ajustar DB_*, MAIL_*, JWT_*, y otros valores necesarios
```

3. Generar clave de aplicación y enlazar almacenamiento:

```bash
php artisan key:generate
php artisan storage:link
```

4. Ejecutar migraciones y seeders (desarrollo):

```bash
php artisan migrate --seed
```

5. Crear un usuario de prueba (opción A: desde Tinker):

```bash
php artisan tinker
>>> use App\\Models\\User;
>>> User::create(['name' => 'Demo User', 'email' => 'demo.sum@gmail.com', 'password' => bcrypt('12345678')]);
```

**Cuenta de prueba (solo desarrollo)**

- Usuario: `demo.sum@gmail.com`
- Contraseña: `12345678`

6. Iniciar servidor local:

```bash
php artisan serve --host=127.0.0.1 --port=8000
```

Comandos útiles adicionales:

```bash
php artisan migrate:refresh --seed   # reinicia BD y vuelve a sembrar
php artisan queue:work               # procesa colas
./vendor/bin/phpunit                # ejecutar pruebas
```

---

## Capturas / Imágenes

Coloca las capturas en `docs/screenshots/` con estos nombres (rutas relativas al repositorio):

- `docs/screenshots/dashboard.png`
- `docs/screenshots/product-list.png`
- `docs/screenshots/sale-list.png`

Imágenes (renderizadas):

<p align="center">
  <img src="docs/screenshots/dashboard.png" alt="Dashboard" style="max-width:100%;width:900px;border-radius:8px;box-shadow:0 8px 24px rgba(0,0,0,0.6);">
  <br/>
  <em>Dashboard — Vista general del sistema</em>
</p>

<p align="center">
  <img src="docs/screenshots/product-list.png" alt="Listado de Productos" style="max-width:100%;width:900px;border-radius:8px;box-shadow:0 8px 24px rgba(0,0,0,0.6);">
  <br/>
  <em>Listado de productos</em>
</p>

<p align="center">
  <img src="docs/screenshots/sale-list.png" alt="Listado de Ventas" style="max-width:100%;width:900px;border-radius:8px;box-shadow:0 8px 24px rgba(0,0,0,0.6);">
  <br/>
  <em>Listado de ventas</em>
</p>

Si quieres, puedo añadir las imágenes por ti: súbelas al chat o indícame la ruta, y las añadiré automáticamente.

---

## API Sistema de Ventas

Descripción breve

- Proyecto: API REST para el sistema de facturación y ventas.
- Tecnología: Laravel (PHP) — backend para manejar clientes, productos, ventas, guías y notas electrónicas.

**Requisitos**

- PHP 8.1+ (o versión compatible)
- Composer
- MySQL / MariaDB (u otra BD soportada por Laravel)
- Extensiones PHP habituales (OpenSSL, PDO, Mbstring, etc.)

**Nota:** La sección de instalación y comandos está en "Inicio rápido" arriba.

---

Si quieres, puedo:

- Añadir ejemplos de llamadas a la API (cURL / Postman) para endpoints comunes.
- Crear un seeder para insertar la cuenta demo automáticamente.
- Hacer commit y push de los cambios (si confirmas).

Dime cuál de estas opciones prefieres y lo hago.