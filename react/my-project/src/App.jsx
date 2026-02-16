import './App.css'
import Menu from './components/Menu'
import { useState } from 'react';

function App() {

  const [name, setName] = useState('');
  const [password, setPassword] = useState('');

  const handleNameChange = (e) => {
    setName(e.target.value);
  }

  const handlePasswordChange = (e) => {
    setPassword(e.target.value);
  }

  const peliculasFamosas = [
    "Inception",
    "The Shawshank Redemption",
    "Pulp Fiction",
    "The Godfather",
    "The Dark Knight",
    "The Matrix",
    "Forrest Gump",
    "Star Wars: A New Hope",
    "Titanic",
    "Parasite"
  ];

  const animales = [
  {
    nombre: "León",
    ecosistema: "Sabana",
    promedioVida: 14,
    esDepredador: true
  },
  {
    nombre: "Pingüino Emperador",
    ecosistema: "Antártida",
    promedioVida: 20,
    dieta: "Peces y calamares"
  },
  {
    nombre: "Elefante Africano",
    ecosistema: "Sabana y Selva",
    promedioVida: 70,
    pesoToneladas: 6
  },
  {
    nombre: "Tortuga Galápagos",
    ecosistema: "Islas volcánicas",
    promedioVida: 150,
    curiosidad: "Puede vivir más de un siglo"
  },
  {
    nombre: "Tiburón Blanco",
    ecosistema: "Océanos",
    promedioVida: 70,
    temperaturaAgua: "Templada"
  }
];

  const ShowAnimal = animales.map((animal) => (
     
      <div key={animal.nombre}>
        <h2>{animal.nombre}</h2>
        <p>Ecosistema: {animal.ecosistema}</p>
        <p>Promedio de Vida: {animal.promedioVida} años</p>
      </div>
  ));


  const peliculasElementos = peliculasFamosas.map((pelicula, index) => (
    <p key={pelicula}>{index + 1}. {pelicula}</p>
  ));

  const isLoggedIn = name === "alejandro" && password === "12345";

  return (
    <div>
      <h1>Hello World</h1>

      <input 
        type="text" 
        placeholder="Digite el nombre" 
        onChange={handleNameChange} 
      />

      <input 
        type="password" 
        placeholder="Digite la contraseña" 
        onChange={handlePasswordChange} 
      />

      {isLoggedIn ? (
        <div>
          <h1>Hello {name}</h1>
          <h2>Your password is {password}</h2>
          <h1>Your movies are:</h1>
          {peliculasElementos}
          {ShowAnimal}
        </div>
      ) : (
        <h2>Invalid credentials</h2>
      )}
    </div>
  );
}

export default App;
