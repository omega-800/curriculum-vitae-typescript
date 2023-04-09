import { useTranslation } from 'react-i18next';
import { Link } from 'react-router-dom';
import { ICareers, ICareer } from '../interfaces/ICareer';
import { ISchools, ISchool } from '../interfaces/ISchool';
import { IWorkplaces, IWorkplace } from '../interfaces/IWorkplace';
import schools_json from '../data/schools.json'
import workplaces_json from '../data/workplaces.json'

function CareerBox({career}:{
    career:ICareer
}){
	const { t, i18n } = useTranslation();
    const schools : ISchools = schools_json;
    const workplaces : IWorkplaces = workplaces_json;
    let school : ISchool;
    let workplace : IWorkplace;
    if(career.school_name !== undefined){
        school = schools[career.school_name as keyof typeof schools];
    } else if (career.workplace_name !== undefined){
        workplace = workplaces[career.workplace_name as keyof typeof workplaces];
    }
    return( 
        <div className="box">
            <div className="box career_school section">
                <p>{career.from} - {career.to}</p>
            </div>
            {/*
            <div className="box_title">
                <h4>{title}</h4>
            </div>
            <div className="box_content">
                <p>{t("career_boss")}: {boss}</p>
                <p>{text}</p>
                <p>{t("career_tools")}: {tools}</p>
                <Link to={"/projects#"+link}>{t("career_toproject")}</Link>
            </div>
    */}
        </div>
    )
}
export default CareerBox;

