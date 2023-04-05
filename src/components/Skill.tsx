import { SkillList } from '../interfaces/ISkill';
import { SpokenLanguages, SpokenLanguage } from '../interfaces/ISpokenLanguage';
import { Languages, Language } from '../interfaces/ILanguage';
import { Office, Application } from '../interfaces/IOffice';
import languages_json from '../data/languages.json';
import spoken_languages_json from '../data/spoken_languages.json';
import office_json from '../data/office.json';
import TranslateIfNeeded from '../tools/TranslateIfNeeded';

function Skill({skills}:{
    skills:SkillList
}){
    const spoken_languages : SpokenLanguages = spoken_languages_json;
    const languages : Languages = languages_json;
    const office : Office = office_json;

    return(

    <div className="box">
        <div className="box_title">
            <h4>{skills.name}</h4>
            <p>{skills.description}</p>
        </div>
        <div className="box_content">
            {skills.itemListElement.map((member,index)=>{
                let name = TranslateIfNeeded(member.name !== undefined ? member.name 
                : member.application_name !== undefined ? office.hasPart.filter(app => app['@id'] == member.application_id)[0].name
                : member.language_name !== undefined ? languages.itemListElement.filter(language => language['@id'] == member.language_id)[0].name
                : member.slanguage_name !== undefined ? spoken_languages[member.slanguage_name as keyof typeof spoken_languages].name 
                : "undefined");
                
				return <>
                    <p>{name.toString()}</p>
                    <div className={"skills "+member.name}>
                        <div>{member.knowledgePercent}%</div>
                    </div>
                </>
			})}
        </div>
    </div>
)
}

export default Skill;