const express = require('express');
const mongoose = require('mongoose');
const cors = require('cors');
const Note = require('./models/Note');

const app = express();

// Middlewares
app.use(cors());
app.use(express.json());

// Conexión a MongoDB
mongoose.connect('mongodb://mongo:27017/notesDB')
  .then(() => console.log('✅ Conectado a MongoDB'))
  .catch(err => console.log('❌ Error Mongo:', err));


// Ruta GET → Obtener notas
app.get('/notes', async (req, res) => {
  const notes = await Note.find();
  res.json(notes);
});

// Ruta POST → Crear nota
app.post('/notes', async (req, res) => {
  const newNote = new Note({ text: req.body.text });
  await newNote.save();
  res.json(newNote);
});


app.listen(5000, () => {
  console.log('🚀 Backend corriendo en puerto 5000');
});

