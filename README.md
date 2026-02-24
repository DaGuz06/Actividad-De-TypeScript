# API de Catálogo de Videojuegos Retro

API REST construida con **Node.js**, **TypeScript** y **Express** que sirve un catálogo de videojuegos retro desde una base de datos **MySQL/MariaDB**.

## Requisitos previos

- [Node.js](https://nodejs.org/) (v18 o superior)
- [MySQL](https://www.mysql.com/) o [MariaDB](https://mariadb.org/) (incluido en XAMPP)

## Instalación

### 1. Clonar el repositorio

```bash
git clone <url-del-repositorio>
cd <nombre-del-repositorio>
```

### 2. Instalar dependencias

```bash
npm install
```

### 3. Configurar la base de datos

1. Arranca MySQL/MariaDB (por ejemplo, desde **XAMPP**).
2. Crea la base de datos e importa los datos ejecutando el script SQL incluido:

```bash
mysql -u root -p < retrodb.sql
```

O bien importa `retrodb.sql` desde **phpMyAdmin**.

### 4. Configurar variables de entorno

Copia el archivo de ejemplo y edítalo con tus credenciales:

```bash
cp .env.example .env
```

Contenido de `.env`:

```env
DB_HOST=localhost
DB_USER=root
DB_PASS=tu_contraseña
DB_NAME=retrodb
PORT=3000
```

### 5. Compilar y ejecutar

```bash
# Compilar TypeScript y arrancar el servidor
npm run dev
```

O por separado:

```bash
# Solo compilar
npm run build

# Solo ejecutar
npm start
```

## Endpoints

| Método | Ruta          | Descripción                              |
| ------ | ------------- | ---------------------------------------- |
| GET    | `/`           | Página de bienvenida                     |
| GET    | `/api/datos`  | Devuelve todos los videojuegos en JSON   |

## Tecnologías

- **Node.js** + **TypeScript**
- **Express** v4
- **mysql2** (driver MySQL con soporte de Promises)
- **dotenv** (variables de entorno)
