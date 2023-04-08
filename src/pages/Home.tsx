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
import TranslateIfNeeded from '../tools/TranslateIfNeeded';
import Skill from '../components/Skill';
import {SkillList} from '../interfaces/ISkill';


function Home(){
	const { t, i18n } = useTranslation();
	const me = people.me;
	const my_address = addresses[me.address_name as keyof typeof addresses];
	const family = people.family;

	const it_skills : SkillList = skills.languages;
	const lang_skills : SkillList = skills.spoken_languages;
	const office_skills : SkillList = skills.office;
	const personal_skills : SkillList = skills.personal;

	const hobbies = [
		[t('home_hobbies_music'), t('home_hobbies_musictext')],
		[t('home_hobbies_art'), t('home_hobbies_arttext')],
		[t('home_hobbies_cevi'), t('home_hobbies_cevitext')],
		[t('home_hobbies_sport'), t('home_hobbies_sporttext')],
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
			<h2  className="section_title">{t('home_skills_title')}</h2>
		
			<Skill skills={it_skills}></Skill>
			<Skill skills={lang_skills}></Skill>
			<Skill skills={office_skills}></Skill>
			<Skill skills={personal_skills}></Skill>

			</div>

			<div className="home_family section">
				<h2 className="section_title">{t('home_family_title')}</h2>
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
				<h2 className="section_title">{t('home_hobbies_title')}</h2>
				{hobbies.map((hobby,index)=>{
					return <SimpleBox
							title={hobby[0]}
							text={hobby[1]}
							/>
				})}
			</div>
			
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
			</div>
        </div>
		</>
    )
}

export default Home;