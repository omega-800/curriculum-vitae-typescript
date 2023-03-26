import { useTranslation } from 'react-i18next';
import { Link } from 'react-router-dom';

function CareerBox({title,boss,text,tools,link}:{
    title:string
    boss:string
    text:string
    tools:string
    link:string
}){
	const { t, i18n } = useTranslation();
    return( 
        <div className="box">
            <div className="box_title">
                <h4>{title}</h4>
            </div>
            <div className="box_content">
                <p>{t("career_boss")}: {boss}</p>
                <p>{text}</p>
                <p>{t("career_tools")}: {tools}</p>
                <Link to={"/projects#"+link}>{t("career_toproject")}</Link>
            </div>
        </div>
    )
}
export default CareerBox;

