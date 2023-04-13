import React from 'react';
import { Link } from 'react-router-dom';
import { useTranslation } from 'react-i18next';

function Navbar(){
    const { t, i18n } = useTranslation();
    const onClickChangeLanguage = (e:any) => {
        i18n.changeLanguage(e.target.value);
    }
    return(
        <div className="navbar">
            <div className="navbar_top show_navbar_top">
                <Link to="/" className="navbar_top_link">{t('home_about_title')}</Link>
                <Link to="/career" className="navbar_top_link">{t('career_title')}</Link>
                <Link to="/projects" className="navbar_top_link">{t('projects_title')}</Link>
                <Link to="/art" className="navbar_top_link">{t('art_title')}</Link>
            </div>
            <div id="lang_select">
                <button name="English" value="en" onClick={onClickChangeLanguage}>EN</button>
                <button name="Deutsch" value="de" onClick={onClickChangeLanguage}>DE</button>
                <button name="Русский" value="ru" onClick={onClickChangeLanguage}>RU</button>
            </div>
        </div>
    )
}

export default Navbar;