import React from 'react';
import ImageBox from '../components/ImageBox';
import Carousel from '../components/Carousel';
import Header from '../components/Header';
import { useTranslation } from 'react-i18next';

function Projects(){
    const { t, i18n } = useTranslation();
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
		<>
		<Header
            title={t('projects_title')}
            text={t('projects_description')}
        />
        <div className="projects">
            <div className="box">
            <h1>filter projects by: language, category, date, etc</h1>
            </div>
            <div className="projects_react section">
                <div className="section_title"><h2>React</h2></div>
                <Carousel
                    title={t('projects_react_text')}
                    slides={portfolioSlideImages}
                />
            </div>
            <div className="projects_python section">
                <div className="section_title"><h2>Python</h2></div>
                <ImageBox
                    title={t('projects_python_text')}
                    image="content/projekte/python_ernestovargas.png"
                />
            </div>
            <div className="projects_cs section">
                <div className="section_title"><h2>Unity/CSharp</h2></div>
                <ImageBox
                    title={t('projects_unity_dungeon')}
                    image="content/projekte/cSharp_dungeon.png"
                />
                <ImageBox
                    title={t('projects_unity_rocket')}
                    image="content/projekte/cSharp_rocket.png"
                />
            </div>
            <div className="projects_html section">
                <div className="section_title"><h2>HTML</h2></div>
                <ImageBox
                    title={t('projects_html_dad')}
                    image="content/projekte/html_dad.png"
                />
                <ImageBox
                    title={t('projects_html_jukebox')}
                    image="content/projekte/html_jukebox.png"
                />
                <ImageBox
                    title={t('projects_html_rus')}
                    image="content/projekte/html_rus.png"
                />
                <ImageBox
                    title={t('projects_html_vallora')}
                    image="content/projekte/html_vallora.png"
                />
            </div>
            <div className="projects_java section">
                <div className="section_title"><h2>Java</h2></div>
                <ImageBox
                    title={t('projects_java_game')}
                    image="content/projekte/java_game.png"
                />
                <ImageBox
                    title={t('projects_java_uno')}
                    image="content/projekte/java_uno.png"
                />
                <ImageBox
                    title={t('projects_java_swing')}
                    image="content/projekte/java_swing.png"
                />
                <ImageBox
                    title={t('projects_java_sort')}
                    image="content/projekte/java_sort.png"
                />
            </div>
            <div className="projects_glassfish section">
                <div className="section_title"><h2>Glassfish</h2></div>
                <Carousel
                    title={t('projects_glassfish_text')}
                    slides={glassfishSlideImages}
                />
            </div>
            <div className="projects_php section">
                <div className="section_title"><h2>PHP/MySQL</h2></div>
                <Carousel
                    title={t('projects_php_forms')}
                    slides={phpSlideImages}
                />
                <ImageBox
                    title={t('projects_php_gallery')}
                    image="content/projekte/php_galerie.png"
                />
            </div>
        </div>
        </>
    )
}

export default Projects