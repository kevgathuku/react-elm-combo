import React from 'react';
import logo from './logo.svg';
import './App.css';

// Add these two imports
import Elm from 'react-elm-components';
import Main from "./Main";

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
        {/* The following line renders the Elm app just like a React component */}
        <Elm src={Main.Elm.Main} />
      </header>
    </div>
  );
}

export default App;
