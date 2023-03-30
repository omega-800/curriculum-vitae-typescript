import React from 'react';
import {Link} from "react-router-dom";
import Header from '../components/Header';
import FamilyBox from '../components/FamilyBox';
import SimpleBox from '../components/SimpleBox';
import SimpleBox2 from '../components/SimpleBox2';
import { useTranslation } from 'react-i18next';
import people from '../data/people.json';
import schools from '../data/schools.json';
import addresses from '../data/addresses.json';
import skills from '../data/skills.json';
import tools from '../data/tools.json'
import TranslateIfNeeded from '../tools/TranslateIfNeeded';
import Skill from '../components/Skill';

function Home(){
	const { t, i18n } = useTranslation();
	const me = people.me;
	const my_address = addresses[me.address_name as keyof typeof addresses];
	const family = people.family;
	const programminglanguages = tools.languages;
	const itskills = skills.it.itemListElement.map((skill,index)=>{
		return programminglanguages[skill.language_name as keyof typeof programminglanguages];
	})

	const hobbies = [
		[t('home_hobbies_music'), t('home_hobbies_musictext')],
		[t('home_hobbies_art'), t('home_hobbies_arttext')],
		[t('home_hobbies_cevi'), t('home_hobbies_cevitext')],
		[t('home_hobbies_sport'), t('home_hobbies_sporttext')],
	];
	const family_infos = [
		[t('home_family_dad'), "Alexey Shevoroshkin", "08.05.1966", "Entwicklungsleiter UBS", "Schweiz, U.S.A."],
		[t('home_family_mom'), "Tatiana Chirokikh", "14.04.1967", "Ernährungsberaterin", "Schweiz, Russland"],
		[t('home_family_brother'), "Michail Shevoroshkin", "22.11.2004", "Tiermedizinischer Praxisassistent", "Schweiz, Russland, U.S.A."],
		[t('home_family_brother'), "Nikolay Shevoroshkin", "05.08.2006", "Schüler, FMS", "Schweiz, Russland, U.S.A."]
	];
	const schools_infos = [
		[t('home_school_ims'), "Hottingen", "2017 - 2020", "https://www.ksh.ch/angebot/informatikmittelschule"],
		[t('home_school_sek'), "Herzogenmühle", "2016 - 2017", "https://www.stadt-zuerich.ch/schulen/de/herzogenmuehle.html"],
		[t('home_school_gym'), "Hohe Promenade", "2014 - 2016", "https://www.kshp.ch/hohe-promenade-gymnasium-zuerich"],
		[t('home_school_pri'), "Probstei", "2008 - 2014", "https://www.stadt-zuerich.ch/schulen/de/probstei.html"],
	];
    return(
		<>
		<Header
            title={t('home_title')}
            text={t('home_description')}
        />
        <div className="home">
            <div className="home_about section">
				<div className="box">
					<div className="box_title">
						<h3>{t('home_about_title')}</h3>
					</div>
					<div className="box_content">
						<img src={me.image} alt={""+t('home_about_portrait')}/> 
						<button type="submit" className="dwnld">{t('home_about_pdf')}</button>
					</div>
				</div>
				<div className="box">
					<div className="box_title">
						<h3>{t('home_about_infos')}</h3>
					</div>
					<div className="box_content">
						<table>	
							<thead>
								<tr>
									<th colSpan={2}><h4>{t('home_about_me')}</h4></th>
								</tr>
							</thead>
							<tbody>		
								<tr>			
									<td>{t('home_about_birthdate')}</td>			
									<td>{me.birthDate}</td>			
								</tr>	
								<tr>			
									<td>{t('home_about_nationality')}</td>			
									<td>{me.nationality}</td>			
								</tr>
								<tr>
									<td>{t('home_about_address')}</td>			
									<td>{my_address.streetAddress}</td>			
								</tr>			
								<tr>			
									<td>{t('home_about_city')}</td>			
									<td>{my_address.postalCode+" "+my_address.addressLocality}</td>			
								</tr>
							</tbody>				
						</table>	
						<table>	
							<thead>
								<tr>
									<th colSpan={2}><h4>{t('home_about_contact')}</h4></th>
								</tr>
							</thead>
							<tbody>		
								<tr>			
									<td>{t('home_about_phone')}</td>					
									<td><a href={"tel:"+me.telephone}>{me.telephone}</a></td>						
								</tr>
								<tr>
									<td>{t('home_about_email')}</td>		
									<td><a href={"mailto:"+me.email}>{me.email}</a></td>					
								</tr>	
							</tbody>			
						</table>
					</div>	
				</div>
			</div>

			<div className="home_skills section">
			<div className="section_title"><h2>{t('home_skills_title')}</h2></div>
		
			
			{Object.keys(skills).map((skillset:string,index:number)=>{
				return (
					<div className="box">{skills[skillset as keyof typeof skills].name}
					{skills[skillset as keyof typeof skills].itemListElement.map((member,index)=>{
					return <p>{member.knowledgePercent + member.description}</p>
				})}
					</div>

				)
			})}
			
				<div className="box">
					<div className="box_title">
						<h4>{t('home_skills_web') + skills.it.name}</h4>
					</div>
					
					<div className="box_content">
						<p>HTML</p>
						<div className="skills html">
							<div>90%</div>
						</div>
						<p>CSS</p>
						<div className="skills css">
							<div>90%</div>
						</div>
						<p>JavaScript</p>
						<div className="skills js">
							<div>60%</div>
						</div>
						<p>PHP</p>
						<div className="skills php">
							<div>45%</div>
						</div>
					</div>
				</div>
				
				<div className="box">
					<div className="box_title">
						<h4>{t('home_skills_dev')}</h4>
					</div>
					<div className="box_content">
						<p>Python</p>
						<div className="skills py">
							<div>80%</div>
						</div>
						<p>Java</p>
						<div className="skills java">
							<div>70%</div>
						</div>
						<p>C#</p>
						<div className="skills cs">
							<div>60%</div>
						</div>
						<p>SQL</p>
						<div className="skills sql">
							<div>90%</div>
						</div>
					</div>
				</div>
				
				<div className="box">
					<div className="box_title">
						<h4>{t('home_skills_pers')}</h4>
					</div>
					<div className="box_content">
						<p>{t('home_skills_solo')}</p>
						<div className="skills one">
							<div>100%</div>
						</div>
						<p>{t('home_skills_team')}</p>
						<div className="skills two">
							<div>90%</div>
						</div>
						<p>{t('home_skills_logic')}</p>
						<div className="skills three">
							<div>90%</div>
						</div>
						<p>{t('home_skills_creativity')}</p>
						<div className="skills four">
							<div>100%</div>
						</div>
					</div>
				</div>
				
				<div className="box">
					<div className="box_title">
						<h4>{t('home_skills_languages')}</h4>
					</div>
					<div className="box_content">
						<p>{t('home_skills_german')}</p>
						<div className="skills de">
							<div>100%</div>
						</div>
						<p>{t('home_skills_english')}</p>
						<div className="skills en">
							<div>90%</div>
						</div>
						<p>{t('home_skills_russian')}</p>
						<div className="skills rus">
							<div>90%</div>
						</div>
						<p>{t('home_skills_french')}</p>
						<div className="skills fr">
							<div>60%</div>
						</div>
					</div>
				</div>
				
				<div className="box">
					<div className="box_title">
						<h4>{t('home_skills_office')}</h4>
					</div>
					<div className="box_content">
						<p>{t('home_skills_word')}</p>
						<div className="skills word">
							<div>100%</div>
						</div>
						<p>{t('home_skills_powerpoint')}</p>
						<div className="skills pp">
							<div>100%</div>
						</div>
						<p>{t('home_skills_excel')}</p>
						<div className="skills excel">
							<div>80%</div>
						</div>
						<p>{t('home_skills_access')}</p>
						<div className="skills access">
							<div>50%</div>
						</div>
					</div>
				</div>
			</div>

			<div className="home_family section">
				<div className="section_title"><h2>{t('home_family_title')}</h2></div>
				{Object.keys(family).map((member:string,index:number)=>{
					return <FamilyBox
							key={index}
							relation={TranslateIfNeeded(family[member as keyof typeof family].relation)}
							name={family[member as keyof typeof family].name}
							birthdate={family[member as keyof typeof family].birthDate}
							job={TranslateIfNeeded(family[member as keyof typeof family].jobTitle)}
							nationality={family[member as keyof typeof family].nationality}
							/>
				})}
			</div>

			<div className="home_hobbies section">
				<div className="section_title"><h2>{t('home_hobbies_title')}</h2></div>
				{hobbies.map((hobby,index)=>{
					return <SimpleBox
							title={hobby[0]}
							text={hobby[1]}
							/>
				})}
			</div>
			
			<div className="home_school section">
				<div className="section_title"><h2>{t('home_school_title')}</h2></div>
				{Object.keys(schools).map((school,index)=>{
					return <SimpleBox2
							key={index}
							title={schools[school as keyof typeof schools].type}
							text={schools[school as keyof typeof schools].name}
							text2={schools[school as keyof typeof schools].fromto}
							link={schools[school as keyof typeof schools].url}
							/>
				})}
			</div>
        </div>
		</>
    )
}

export default Home;