import React from 'react';
import { useTranslation } from 'react-i18next';

function Footer(){
    const { t, i18n } = useTranslation();
    return(
        <div className="footer">
            <h2>Kontakt</h2>
            <table>
                <tr>
                    <td>{t('home_about_email')}</td>
                    <td><a href="mailto:gshevoroshkin@gmail.com">gshevoroshkin@gmail.com</a></td>
                </tr>
                <tr>
                    <td>{t('home_about_phone')}</td>
                    <td><a href="tel:+41772156436">077 215 64 36</a></td>
                </tr>
                <tr>
                    <td>Github</td>
                    <td><a href="github.com/omega-800">omega-800</a></td>
                </tr>
            </table>
        </div>
    )
}

export default Footer;