# GreenTrack API & Client - Dockerizado

Este proyecto es una aplicación web completa. A continuación se detallan los pasos necesarios para configurar, ejecutar y probar el entorno de desarrollo local.

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

### 1. Construye tu proyecto de backend
El proyecto requiere que construyas previamente el proyecto java.

1.  Localiza la carpeta `/greentrack-web` en la raiz del proyecto e ingresa.
3.  Ejecuta el siguiente comando.

```bash
./gradlew clean build --refresh-dependencies
```

### 2. Construye el proyecto completo
El proyecto esta dockerizado por lo que puedes ejecutarlo con el uso de docker.

```bash
# Uso de docker compose
docker compose up -d --build
```

### 3. Rutas

frontend http://localhost:80.  
[Frontend](http://localhost:80)

backend http://localhost:8080.  
[Backend](http://localhost:8080)

## 🔑 Credenciales de Acceso

Para probar las funcionalidades protegidas, utiliza el siguiente usuario administrador preconfigurado en la base de datos:

|Rol|Usuario|Contraseña|
|-----|-----|-----|
|Admin|admin|admin1234|

## 📚 Documentación de API (Postman)

Para probar los endpoints del Backend directamente sin pasar por el Frontend, puedes utilizar nuestra colección de Postman.

[Ver Colección de GreenTrack en Postman](https://www.postman.com/posgrado-4464/greentrack-api/collection/12739785-3a3de44a-a562-4cd9-9ce4-9259ed8d667e/?action=share&creator=12739785)

