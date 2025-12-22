# GreenTrack API & Client

Este proyecto es una aplicación web completa. A continuación se detallan los pasos necesarios para configurar, ejecutar y probar el entorno de desarrollo local.

> **Nota:** Este proyecto **no** está dockerizado. Se requiere la instalación manual de las herramientas y la base de datos. 😓

---

## 🛠 Tecnologías Utilizadas

### Backend
* **Lenguaje:** Java 21
* **Framework:** Spring Boot 3.5.9
* **Gestor de Dependencias:** Gradle
* **Base de Datos:** MySQL (Instalación local)

### Frontend
* **Framework:** Angular 20
* **Runtime:** Node.js 22

---

## ⚙️ Pre-requisitos

Asegúrate de tener instalado lo siguiente en tu máquina antes de comenzar:
1.  **JDK 21** configurado en el `PATH`.
2.  **Node.js 22** y **NPM**.
3.  **MySQL Server** en ejecución.

---

## 🚀 Guía de Instalación y Ejecución

Sigue estos pasos en orden para levantar el proyecto exitosamente.

### 1. Configuración de Base de Datos
El proyecto requiere una base de datos MySQL local.

1.  Crea una base de datos vacía en tu motor MySQL (revisa el archivo `application.properties` para ver el nombre esperado de la DB, o configúralo allí).
2.  Localiza la carpeta `/sql` en la raíz del proyecto.
3.  Ejecuta los scripts SQL proporcionados en esa carpeta para generar las tablas e insertar la data inicial.

### 2. Backend (Spring Boot - Gradle)
El servidor se ejecutará por defecto en el puerto **8080**.

1.  Navega a la carpeta del backend.
2.  Asegúrate de que las credenciales de tu base de datos local coincidan con las del archivo `src/main/resources/application.properties` (o `application.yml`).
3.  Ejecuta el proyecto usando el *Gradle Wrapper*:

```bash
# En Linux / macOS / Git Bash
./gradlew bootRun

# En Windows (CMD / PowerShell)
gradlew.bat bootRun
```

### 3. Frontend (Angular)

El cliente se ejecutará por defecto en el puerto 4200.

- Navega a la carpeta del frontend.  

Instala las dependencias:

```Bash
npm install
```

Inicia el servidor de desarrollo:

```Bash
    npm start
    ng serve
```

Abre tu navegador en http://localhost:4200.  

## 🔑 Credenciales de Acceso

Para probar las funcionalidades protegidas, utiliza el siguiente usuario administrador preconfigurado en la base de datos:

|Rol|Usuario|Contraseña|
|-----|-----|-----|
|Admin|admin|admin1234|

## 📚 Documentación de API (Postman)

Para probar los endpoints del Backend directamente sin pasar por el Frontend, puedes utilizar nuestra colección de Postman.

[Ver Colección de GreenTrack en Postman](https://www.postman.com/posgrado-4464/greentrack-api/collection/12739785-3a3de44a-a562-4cd9-9ce4-9259ed8d667e/?action=share&creator=12739785)

## ⚠️ Solución de Problemas Comunes

- Error de conexión a BD: Verifica que el servicio de MySQL esté activo y que el puerto 3306 esté disponible. Revisa usuario y contraseña en el archivo de propiedades de Spring Boot.
- Permisos de ejecución (Linux/Mac): Si ./gradlew da error de permiso denegado, ejecuta: chmod +x gradlew.
- Puertos ocupados: Asegúrate de que los puertos 8080 y 4200 no estén siendo usados por otros procesos.
- Versión de Node: Si tienes errores al instalar paquetes de Angular, verifica que estés usando Node 22 (node -v).
