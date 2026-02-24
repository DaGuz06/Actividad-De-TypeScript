import express from 'express';
import dotenv from 'dotenv';
import mysql from 'mysql2/promise';
// Cargar variables de entorno
dotenv.config();
const app = express();
const PORT = process.env.PORT || 3000;
app.get('/', (_req, res) => {
    res.send('<h1>API de catálogo de videojuegos retro</h1>');
});
// Ruta GET /api/datos
app.get('/api/datos', async (_req, res) => {
    try {
        // Crear conexión a MySQL
        const connection = await mysql.createConnection({
            host: process.env.DB_HOST,
            user: process.env.DB_USER,
            password: process.env.DB_PASS,
            database: process.env.DB_NAME,
        });
        // Ejecutar consulta tipada
        const [rows] = await connection.query('SELECT * FROM videojuegos');
        // Cerrar conexión
        await connection.end();
        // Devolver JSON
        res.json(rows);
    }
    catch (error) {
        console.error('Error al conectar con la base de datos:', error);
        res.status(500).json({ error: 'Error al obtener los datos' });
    }
});
// Iniciar servidor
app.listen(PORT, () => {
    console.log(`Servidor corriendo en http://localhost:${PORT}`);
});
