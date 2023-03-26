import React from 'react';
import { Link } from 'react-router-dom';
import './Career.css';
import Header from '../components/Header';
import { useTranslation } from 'react-i18next';
import CareerBox from '../components/CareerBox';

function Career(){
    const { t, i18n } = useTranslation();
    const webdev = [
        [t("career_scraping_title"), "Ernesto Vargas", t("career_scraping_description"), "Python, Selenium, HTML, Photoshop", ""],
        [t("career_immob_title"), t("home_family_dad"), t("career_immob_description"), "HTML, CSS, PHP, JavaScript", ""],
        [t("career_ecomm_title"), "JMBF Consulting", t("career_ecomm_description"), "React, HTML, CSS, JavaScript", ""],
        [t("career_btc_title"), "Cubera Solutions AG", t("career_btc_description"), "HTML, CSS, PHP, JavaScript", ""],
        [t("career_rus_title"), t("home_family_mom"), t("career_rus_description"), "HTML, CSS, JavaScript", ""]
    ];
    return(
		<>
		<Header
            title={t('career_title')}
            text={t('career_description')}
        />
        <div className="career">
            <div className="career_web section">
                <div className="section_title"><h2>{t("career_webdev_title")}</h2></div>
                
                {webdev.map((project,index)=>{
					return <CareerBox
							title={project[0]}
							boss={project[1]}
							text={project[2]}
							tools={project[3]}
							link={project[4]}
							/>
				})}
            </div>
            
            <div className="career_dev section">
                <div className="section_title"><h2>Java</h2></div>
            </div>
        </div>
        </>
    )
}

export default Career;