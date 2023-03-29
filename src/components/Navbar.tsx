import React from 'react';
import { Link } from 'react-router-dom';
import './Navbar.css';
import { useTranslation } from 'react-i18next';

function Navbar(){
    const { t, i18n } = useTranslation();
    const onClickChangeLanguage = (e:any) => {
        i18n.changeLanguage(e.target.value);
    }
    return(
        <div className="navbar">
            <div className="navbar_top show_navbar_top">
                <Link to="/" className="navbar_top_link">
                    <h4>{t("home_title")}</h4>
                </Link>
                <Link to="/career" className="navbar_top_link">
                    <h4>{t("career_title")}</h4>
                </Link>
                <Link to="/projects" className="navbar_top_link">
                    <h4>{t("projects_title")}</h4>
                </Link>
                <Link to="/art" className="navbar_top_link">
                    <h4>{t("art_title")}</h4>
                </Link>
                <button name="English" value="en" onClick={onClickChangeLanguage}>EN</button>
                <button name="Deutsch" value="de" onClick={onClickChangeLanguage}>DE</button>
                <button name="Русский" value="ru" onClick={onClickChangeLanguage}>RU</button>
            </div>
        </div>
    )
}

export default Navbar;