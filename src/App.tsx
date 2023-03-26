import React from 'react';
import { BrowserRouter, Route, Routes } from 'react-router-dom';
import logo from './logo.svg';
import './App.css';
import Navbar from './components/Navbar';
import Footer from './components/Footer';
import Home from './pages/Home';
import Career from './pages/Career';
import Projects from './pages/Projects';
import Art from './pages/Art';
import { useTranslation } from 'react-i18next';

function App() {
  const { t, i18n } = useTranslation();

  return (
    <div className="App">
      <BrowserRouter>
          <Navbar />
        <Routes>
          <Route path="/" element={
            <Home
              title={t('home_title')}
              text={t('home_description')}
              />
            }
          />
          <Route path="/career" element={
            <Career 
            title={t('career_title')}
            text={t('career_description')}
              />
            }
          />
          <Route path="/projects" element={
            <Projects 
            title={t('projects_title')}
            text={t('projects_description')}
              />}
          />
          <Route path="/art" element={
              <Art 
              title={t('art_title')}
              text={t('art_description')}
              />
            }
          />
        </Routes>
        <Footer />
      </BrowserRouter>
    </div>
  );
}

export default App;
