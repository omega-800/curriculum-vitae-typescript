import { ISkillList } from '../interfaces/ISkill';
import { ISpokenLanguages, ISpokenLanguage } from '../interfaces/ISpokenLanguage';
import { ILanguages, ILanguage } from '../interfaces/ILanguage';
import { IOffice, IApplication } from '../interfaces/IOffice';
import languages_json from '../data/languages.json';
import spoken_languages_json from '../data/spoken_languages.json';
import office_json from '../data/office.json';
import TranslateIfNeeded from '../tools/TranslateIfNeeded';

function Skill({skills}:{
    skills:ISkillList
}){
    const spoken_languages : ISpokenLanguages = spoken_languages_json;
    const languages : ILanguages = languages_json;
    const office : IOffice = office_json;

    return(

    <div className="box">
        <div className="box_title">
            <h4>{skills.name}</h4>
            <p>{skills.description}</p>
        </div>
        <div className="box_content">
            {skills.itemListElement.map((member,index)=>{
                let name = TranslateIfNeeded(member.name !== undefined ? member.name 
                : member.application_id !== undefined ? office.hasPart.filter(app => app['@id'] === member.application_id)[0].name
                : member.language_id !== undefined ? languages.itemListElement.filter(language => language['@id'] === member.language_id)[0].name
                : member.slanguage_name !== undefined ? spoken_languages[member.slanguage_name as keyof typeof spoken_languages].name 
                : "undefined");
                
				return  <div className={"skills "+name}>
                            <p className="skill_name">{name.toString()}</p>
                            <div className="skill_percent" style={{width:member.knowledgePercent+"%"}}>{member.knowledgePercent}%</div>
                        </div>
			})}
        </div>
    </div>
)
}

export default Skill;