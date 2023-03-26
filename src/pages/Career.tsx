import React from 'react';
import { Link } from 'react-router-dom';
import './Career.css';

function Career(){
    return(
        <div className="career">
            <div className="career_web section">
                <div className="section_title"><h2>Webdevelopment</h2></div>
                <div className="box">
					<div className="box_title">
						<h4>Webscraping und Automatisation</h4>
					</div>
					<div className="box_content">
                        <p>Auftraggeber: Ernesto Vargas</p>
						<p>Der Auftrag war es, Kleidungsstücke aus verschiedenen Kollektionen auslesen, die Bilder bearbeiten und auf die Homepage hochladen. Dafür habe ich ein Script geschrieben, welches die Informationen automatisch ausliest und schlussendlich Produkte samt den Infos auf der Webseite erstellt.</p>
                        <p>Tools: Python, Selenium, HTML, Photoshop</p>
                        <Link to="/projects">Zum Projekt</Link>
                    </div>
				</div>
                <div className="box">
					<div className="box_title">
						<h4>Immobilienvermietung</h4>
					</div>
					<div className="box_content">
                        <p>Auftraggeber: Vater</p>
                        <p>Für die Geschäftsidee meines Vaters entwickelte ich eine Webapplikation, auf der er seine in der USA zu vermietenden Wohnungen online stellen kann, damit diese besser für die Öffentlichkeit ersichtlich sind.</p>
                        <p>Tools: HTML, CSS, PHP, JavaScript</p>
                        <Link to="/projects">Zum Projekt</Link>
                    </div>
				</div>
                <div className="box">
					<div className="box_title">
						<h4>E-Commerce Website</h4>
					</div>
					<div className="box_content">
                        <p>Auftraggeber: JMBF Consulting</p>
                        <p>Momentan entwickle ich eine React-App, auf welcher Gebrauchtwaren sowie weitere Dienstleistungen Angeboten werden.</p>
                        <p>Tools: React, HTML, CSS, JavaScript</p>
                        <Link to="/projects">Zum Projekt</Link>
                    </div>
				</div>
                <div className="box">
					<div className="box_title">
						<h4>Bitcointracker</h4>
					</div>
					<div className="box_content">
                        <p>Auftraggeber: Cubera Solutions AG</p>
                        <p>Der Probeauftrag bei Cubera bestand darin, eine Applikation herzustellen, die den Bitcoin Kurs grafisch anzeigt und eine Funktion hat, diesen in andere Währungen umzurechnen.</p>
                        <p>Tools: HTML, CSS, PHP, JavaScript</p>
                        <Link to="/projects">Zum Projekt</Link>
                    </div>
				</div>
                <div className="box">
					<div className="box_title">
						<h4>Homepage RusFrauenTreff</h4>
					</div>
					<div className="box_content">
                        <p>Auftraggeber: RusFrauenTreff</p>
                        <p>Für diese Organisation entwickelte ich eine Homepage, auf welcher alle Events und Informationen ersichtlich waren.</p>
                        <p>Tools: HTML, CSS, JavaScript</p>
                        <Link to="/projects">Zum Projekt</Link>
                    </div>
				</div>
            </div>
            <div className="career_dev section">
                <div className="section_title"><h2>Java</h2></div>
            </div>
        </div>
    )
}

export default Career;