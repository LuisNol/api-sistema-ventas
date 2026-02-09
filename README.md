<div align="center">

# 🚀 API Sistema de Ventas

### Sistema completo de facturación electrónica con Laravel

[![Laravel](https://img.shields.io/badge/Laravel-11.x-FF2D20?style=for-the-badge&logo=laravel&logoColor=white)](https://laravel.com)
[![PHP](https://img.shields.io/badge/PHP-8.2+-777BB4?style=for-the-badge&logo=php&logoColor=white)](https://php.net)
[![License](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)](LICENSE)

[Demo en Vivo](#-demo-en-vivo) • [Características](#-características) • [Instalación](#-instalación-rápida) • [Capturas](#-capturas-de-pantalla)

</div>

---

## 📋 Tabla de Contenidos

- [Demo en Vivo](#-demo-en-vivo)
- [Características](#-características)
- [Requisitos](#-requisitos)
- [Instalación Rápida](#-instalación-rápida)
- [Configuración](#-configuración)
- [Capturas de Pantalla](#-capturas-de-pantalla)
- [Contribuir](#-contribuir)
- [Licencia](#-licencia)

---

## 🌐 Demo en Vivo

Prueba el sistema completo con las siguientes credenciales:

<div align="center">

| Componente | URL |
|------------|-----|
| 🔧 **Backend API** | [https://api-fe.avisonline.store](https://api-fe.avisonline.store) |
| 💻 **Frontend Admin** | [https://admin-fe.avisonline.store](https://admin-fe.avisonline.store) |

### Credenciales de Acceso
```
📧 Email:    demo.sum@gmail.com
🔑 Contraseña: 12345678
```

</div>

---

## ✨ Características

<div align="center">

| 📦 Gestión de Productos | 💰 Ventas y Facturación | 👥 Control de Usuarios |
|:---:|:---:|:---:|
| Inventario completo | Facturación electrónica | Roles y permisos |
| Categorización | Reportes detallados | Multi-usuario |
| Control de stock | Métodos de pago | Auditoría de acciones |

</div>

- ✅ **API RESTful** completa con Laravel
- ✅ **Autenticación JWT** segura
- ✅ **Sistema de permisos** granular
- ✅ **Facturación electrónica** integrada
- ✅ **Dashboard interactivo** con estadísticas en tiempo real
- ✅ **Gestión de inventario** con alertas de stock
- ✅ **Reportes y exportación** de datos

---

## 🔧 Requisitos

Antes de comenzar, asegúrate de tener instalado:

- **PHP** >= 8.2
- **Composer** >= 2.0
- **MySQL** >= 8.0 o **PostgreSQL** >= 13
- **Node.js** >= 18.x (para el frontend)
- **Git**

---

## 🚀 Instalación Rápida

### Backend (API)
```bash
# 1. Clonar el repositorio
git clone https://github.com/tu-usuario/api-sistema-ventas.git
cd api-sistema-ventas

# 2. Instalar dependencias
composer install

# 3. Configurar variables de entorno
cp .env.example .env

# 4. Generar clave de aplicación
php artisan key:generate

# 5. Crear enlace simbólico para almacenamiento
php artisan storage:link

# 6. Ejecutar migraciones con datos de prueba
php artisan migrate --seed

# 7. Iniciar el servidor de desarrollo
php artisan serve
```

> 💡 **Nota:** Para producción, ejecuta solo el seeder de permisos:
> ```bash
> php artisan db:seed --class=PermissionsDemoSeeder
> ```

### Frontend (Opcional)

Visita el repositorio del frontend para instrucciones de instalación:

📁 [Frontend Sistema de Ventas](https://github.com/tu-usuario/frontend-sistema-ventas)

---

## ⚙️ Configuración

### Variables de Entorno Esenciales

Edita el archivo `.env` con tu configuración:
```env
# Base de datos
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=nombre_base_datos
DB_USERNAME=usuario
DB_PASSWORD=contraseña

# JWT (si aplica)
JWT_SECRET=tu_clave_secreta_jwt

# Mail (opcional)
MAIL_MAILER=smtp
MAIL_HOST=smtp.mailtrap.io
MAIL_PORT=2525
```

### Configuración de Permisos (Linux/Mac)
```bash
chmod -R 775 storage bootstrap/cache
chown -R www-data:www-data storage bootstrap/cache
```

---

## 📸 Capturas de Pantalla

<details>
<summary>👉 Click para ver las capturas</summary>

<br>

### 📊 Dashboard Principal

<p align="center">
  <img src="docs/screenshots/dashboard.png" alt="Dashboard" width="900" style="border-radius:12px;box-shadow:0 10px 30px rgba(0,0,0,0.3);">
</p>

<p align="center">
  <em>Vista general del sistema con métricas y estadísticas en tiempo real</em>
</p>

---

### 📦 Gestión de Productos

<p align="center">
  <img src="docs/screenshots/product-list.png" alt="Listado de Productos" width="900" style="border-radius:12px;box-shadow:0 10px 30px rgba(0,0,0,0.3);">
</p>

<p align="center">
  <em>Administración completa del catálogo de productos con control de inventario</em>
</p>

---

### 💰 Control de Ventas

<p align="center">
  <img src="docs/screenshots/sale-list.png" alt="Listado de Ventas" width="900" style="border-radius:12px;box-shadow:0 10px 30px rgba(0,0,0,0.3);">
</p>

<p align="center">
  <em>Registro detallado de todas las transacciones y facturación</em>
</p>

</details>

---

## 🤝 Contribuir

Las contribuciones son bienvenidas y apreciadas. Para contribuir:

1. 🍴 Fork el proyecto
2. 🌿 Crea una rama para tu característica (`git checkout -b feature/AmazingFeature`)
3. 💾 Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. 📤 Push a la rama (`git push origin feature/AmazingFeature`)
5. 🔃 Abre un Pull Request

---

## 📞 Soporte

¿Necesitas ayuda? Contáctanos:

- 📧 Email: soporte@ejemplo.com
- 💬 Discord: [Únete a nuestra comunidad](https://discord.gg/ejemplo)
- 📚 Documentación: [Wiki del proyecto](https://github.com/tu-usuario/api-sistema-ventas/wiki)

---

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.

---

<div align="center">

### ⭐ Si este proyecto te ha sido útil, considera darle una estrella

**Desarrollado con ❤️ usando Laravel**

[⬆️ Volver arriba](#-api-sistema-de-ventas)

</div>