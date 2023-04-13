import React from 'react';
import { Link } from 'react-router-dom';
import Header from '../components/Header';
import { useTranslation } from 'react-i18next';
import CareerBox from '../components/CareerBox';
import { ICareers, ICareer } from '../interfaces/ICareer';
import careers from '../data/career.json';

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
            <div className="box career_school section">
                <h1>create a career timeline like git</h1>
            </div>
            {careers.careers.map((item,index)=>{
                return <CareerBox career={item} />
            })}
			{/*
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
            */}
        </div>
			{/*
			<div className="home_school section">
				<h2 className="section_title">{t('home_school_title')}</h2>
				{Object.keys(schools).map((school,index)=>{
					return <SimpleBox2
							key={index}
							title={schools[school as keyof typeof schools].type}
							text={schools[school as keyof typeof schools].name}
							text2={schools[school as keyof typeof schools].from +" - "+ schools[school as keyof typeof schools].to}
							link={schools[school as keyof typeof schools].url}
							/>
				})}
			</div>*/}
        </>
    )
}

export default Career;