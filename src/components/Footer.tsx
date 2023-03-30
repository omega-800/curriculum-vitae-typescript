import React from 'react';
import { useTranslation } from 'react-i18next';
import People from '../data/people.json';

function Footer(){
    const { t, i18n } = useTranslation();
    const myEmail = People.me.email;
    const myPhone = People.me.telephone;
    const myGithub = People.me.github;
    return(
        <div className="footer">
            <h2>{t('home_about_contact')}</h2>
            <table>
                <tr>
                    <td>{t('home_about_email')}</td>
                    <td><a href={"mailto:"+myEmail}>{myEmail}</a></td>
                </tr>
                <tr>
                    <td>{t('home_about_phone')}</td>
                    <td><a href={"tel:"+myPhone}>{myPhone}</a></td>
                </tr>
                <tr>
                    <td>Github</td>
                    <td><a href={myGithub}>{myGithub}</a></td>
                </tr>
            </table>
        </div>
    )
}

export default Footer;