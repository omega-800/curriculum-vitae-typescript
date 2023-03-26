import React from 'react';
import ImageBox from '../components/ImageBox';
import Carousel from '../components/Carousel';
import './Projects.css';

function Projects(){
    const glassfishSlideImages = [
        { src: 'content/projekte/glassfish_books.png' },
        { src: 'content/projekte/glassfish_books2.png' },
        { src: 'content/projekte/glassfish_books3.png' }
    ];
    const portfolioSlideImages = [
        { src: 'content/projekte/react_shirtshop1.png' },
        { src: 'content/projekte/react_shirtshop2.png' }
    ];
    const phpSlideImages = [
        { src: 'content/projekte/php_formulare.png' },
        { src: 'content/projekte/php_formulare2.png' }
    ];
    
    return(
        <div className="projects">
            <div className="projects_react section">
                <div className="section_title"><h2>React</h2></div>
                <Carousel
                    title="Ich programmiere gerade einen Onlineshop, auf welchem Kleider mit meinen Designs erhältlich sind"
                    slides={portfolioSlideImages}
                />
            </div>
            <div className="projects_python section">
                <div className="section_title"><h2>Python</h2></div>
                <ImageBox
                    title="Ich habe ein Script geschrieben, welches die Informationen über Produkte aus anderen Webseiten automatisch ausliest und schlussendlich Produkte samt den Infos auf der Webseite von Ernesto Vargas erstellt"
                    image="content/projekte/python_ernestovargas.png"
                />
            </div>
            <div className="projects_cs section">
                <div className="section_title"><h2>Unity/CSharp</h2></div>
                <ImageBox
                    title="Ein 2D Dungeon Spiel designte und programmierte ich vor einem Jahr"
                    image="content/projekte/cSharp_dungeon.png"
                />
                <ImageBox
                    title="Als mein erstes Spiel entwickelte ich ein Spiel, wo man mit einer Rakete Meteoriten ausweicht"
                    image="content/projekte/cSharp_rocket.png"
                />
            </div>
            <div className="projects_html section">
                <div className="section_title"><h2>HTML</h2></div>
                <ImageBox
                    title="ür die Geschäftsidee meines Vaters entwickelte ich eine Webapplikation, auf der er seine in der USA zu vermietenden Wohnungen online stellen kann"
                    image="content/projekte/html_dad.png"
                />
                <ImageBox
                    title="Für ein Schulprojekt wurde eine funktionale Jukebox Webseite programmiert"
                    image="content/projekte/html_jukebox.png"
                />
                <ImageBox
                    title='Für meine Mutter erstellte ich die Homepage für "Russische Frauen Treff"'
                    image="content/projekte/html_rus.png"
                />
                <ImageBox
                    title="Vallora ist eine der ersten Webseiten (für ein Hotel), die ich erstellte"
                    image="content/projekte/html_vallora.png"
                />
            </div>
            <div className="projects_java section">
                <div className="section_title"><h2>Java</h2></div>
                <ImageBox
                    title="Ein textbasiertes Spiel, welches ich erstellt habe um Java Kindern beizubringen"
                    image="content/projekte/java_game.png"
                />
                <ImageBox
                    title="Ein UNO Spiel mit Swing gestaltet"
                    image="content/projekte/java_uno.png"
                />
                <ImageBox
                    title="Ein Notenrechner für die Schule"
                    image="content/projekte/java_swing.png"
                />
                <ImageBox
                    title="In der Schule lernten wir mehrere Sortieralgorythmen"
                    image="content/projekte/java_sort.png"
                />
            </div>
            <div className="projects_glassfish section">
                <div className="section_title"><h2>Glassfish</h2></div>
                <Carousel
                    title="In der Schule lernten wir mit Glassfish und Java eine Webapp für eine Bibliothek mit Aulseihfunktion zu programmieren"
                    slides={glassfishSlideImages}
                />
            </div>
            <div className="projects_php section">
                <div className="section_title"><h2>PHP/MySQL</h2></div>
                <Carousel
                    title="Verschiedenste Arten von Formularen und Wegen, sie zu prüfen erfuhren wir in der Schule"
                    slides={phpSlideImages}
                />
                <ImageBox
                    title="eine Galerie, in welcher man Bilder hochladen und entfernen konnte"
                    image="content/projekte/php_galerie.png"
                />
            </div>
        </div>
    )
}

export default Projects