const express = require('express');
const mongoose = require('mongoose');
const cors = require('cors');

const app = express();

// Middlewares
app.use(cors());
app.use(express.json());

// 🔌 Conexión a MongoDB
mongoose.connect('mongodb://mongo:27017/coloresDB')

  .then(() => console.log('✅ Conectado a MongoDB'))
  .catch(err => console.log('❌ Error Mongo:', err));


// 📦 Modelo (colección votos)
const votoSchema = new mongoose.Schema({
  color: String,
  fecha: { type: Date, default: Date.now }
});

const Voto = mongoose.model('Voto', votoSchema);


// 🎯 Ruta para votar
app.post('/votar', async (req, res) => {
  try {
    const { color } = req.body;

    if (!color) {
      return res.status(400).json({ error: 'Color requerido' });
    }

    const nuevoVoto = new Voto({ color });
    await nuevoVoto.save();

    res.json({ mensaje: 'Voto guardado' });

  } catch (error) {
    res.status(500).json({ error: 'Error al guardar voto' });
  }
});


// 📊 Ruta para obtener resultados
app.get('/resultados', async (req, res) => {
  try {
    const rojos = await Voto.countDocuments({ color: 'rojo' });
    const azules = await Voto.countDocuments({ color: 'azul' });

    res.json({ rojo: rojos, azul: azules });

  } catch (error) {
    res.status(500).json({ error: 'Error al obtener resultados' });
  }
});


// 🚀 Levantar servidor
app.listen(5000, () => {
  console.log('🚀 Servidor corriendo en http://localhost:5000');
});

