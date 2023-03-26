import React from 'react';
import { BrowserRouter, Route, Routes } from 'react-router-dom';
import logo from './logo.svg';
import './App.css';
import Header from './components/Header';
import Home from './pages/Home';

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<>
            <Header
              title="Guten Tag! Ich bin Georgiy Shevoroshkin"
              text="ein motivierter Schüler und leidenschaftlicher Programmierer aus der IMS Hottingen. Auf dieser Webseite sind mein Lebenslauf, meine Attestate und Projekte zu sehen. Sie finden auch viele weitere Informationen über meine Freizeitbeschäftigungen, Interessen und Fakten über mich, die auf den Bewerbungsunterlagen nicht zu sehen sind"
              />
            <Home />
            </>}
          />
        </Routes>

      </BrowserRouter>
    </div>
  );
}

export default App;
