import React from 'react';
import {Link} from "react-router-dom";
import './Home.css';

function Home(){
    return(
        <div className="home">
            <div className="home_about section">
				<div className="box">
					<div className="box_title">
						<h4>Über mich</h4>
					</div>
					<div className="box_content">
						<img src="content/profilepic/profilepic.jpg" alt="Portrait"/> 
						<button type="submit" className="dwnld">Lebenslauf PDF</button>
					</div>
				</div>
				<div className="box">
					<div className="box_title">
						<h4>Infos</h4>
					</div>
					<div className="box_content">
						<table>	
							<thead>
								<tr>
									<th colSpan={2}><h4>Personalien</h4></th>
								</tr>
							</thead>
							<tbody>		
								<tr>			
									<td><b>Geburtsdatum</b></td>			
									<td>18.06.2002</td>			
								</tr>	
								<tr>			
									<td><b>Nationalität</b></td>			
									<td>Schweiz, Russland, U.S.A.</td>			
								</tr>
								<tr>
									<td><b>Wohnort</b></td>			
									<td>Stettbachstr. 129g</td>			
								</tr>			
								<tr>			
									<td><b>PLZ/Ort</b></td>			
									<td>8051 Zürich</td>			
								</tr>
							</tbody>				
						</table>	
						<table>	
							<thead>
								<tr>
									<th colSpan={2}><h4>Kontakt</h4></th>
								</tr>
							</thead>
							<tbody>		
								<tr>			
									<td><b>Telefon</b></td>					
									<td>076 271 93 38</td>						
								</tr>
								<tr>
									<td><b>Email</b></td>		
									<td>gshevoroshkin@gmail.com</td>					
								</tr>	
							</tbody>			
						</table>
					</div>	
				</div>
			</div>

			<div className="home_skills section">
			<div className="section_title"><h2>Skills</h2></div>
				
				<div className="box">
					<div className="box_title">
						<h4>Webentwicklung</h4>
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
						<p>JAVASCRIPT</p>
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
						<h4>Applikationsentwicklung</h4>
					</div>
					<div className="box_content">
						<p>Python</p>
						<div className="skills py">
							<div>80%</div>
						</div>
						<p>JAVA</p>
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
						<h4>Persönlich</h4>
					</div>
					<div className="box_content">
						<p>Einzelarbeit</p>
						<div className="skills one">
							<div>100%</div>
						</div>
						<p>Teamwork</p>
						<div className="skills two">
							<div>90%</div>
						</div>
						<p>Logisches Denken</p>
						<div className="skills three">
							<div>90%</div>
						</div>
						<p>Kreativität</p>
						<div className="skills four">
							<div>100%</div>
						</div>
					</div>
				</div>
				
				<div className="box">
					<div className="box_title">
						<h4>Sprachen</h4>
					</div>
					<div className="box_content">
						<p>Deutsch</p>
						<div className="skills de">
							<div>100%</div>
						</div>
						<p>Englisch</p>
						<div className="skills en">
							<div>90%</div>
						</div>
						<p>Russisch</p>
						<div className="skills rus">
							<div>90%</div>
						</div>
						<p>Französisch</p>
						<div className="skills fr">
							<div>60%</div>
						</div>
					</div>
				</div>
				
				<div className="box">
					<div className="box_title">
						<h4>Office</h4>
					</div>
					<div className="box_content">
						<p>Word</p>
						<div className="skills word">
							<div>100%</div>
						</div>
						<p>Powerpoint</p>
						<div className="skills pp">
							<div>100%</div>
						</div>
						<p>Excel</p>
						<div className="skills excel">
							<div>80%</div>
						</div>
						<p>Access</p>
						<div className="skills access">
							<div>50%</div>
						</div>
					</div>
				</div>
			</div>

			<div className="home_family section">
				<div className="section_title"><h2>Familie</h2></div>
				
				<div className="box">
					<div className="box_title">
						<h4>Vater</h4>
					</div>
					<div className="box_content">
						<table>	
							<tbody>	
								<tr>			
								<td><b>Name</b></td>			
								<td>Alexey Shevoroshkin</td>			
								</tr>		
								<tr>			
								<td><b>Geburtsdatum</b></td>			
								<td>08.05.1966</td>			
								</tr>
								<tr>			
								<td><b>Beruf</b></td>			
								<td>Entwicklungsleiter UBS</td>			
								</tr>						
								<tr>			
								<td><b>Nationalität</b></td>			
								<td>Schweiz, U.S.A.</td>			
								</tr>	
							</tbody>			
						</table>
					</div>
				</div>
				
				<div className="box">
					<div className="box_title">
						<h4>Mutter</h4>
					</div>
					<div className="box_content">
						<table>	
							<tbody>
								<tr>			
								<td><b>Name</b></td>			
								<td>Tatiana Chirokikh</td>			
								</tr>					
								<tr>			
								<td><b>Geburtsdatum</b></td>			
								<td>14.04.1967</td>			
								</tr>
								<tr>			
								<td><b>Beruf</b></td>			
								<td>Ernährungsberaterin</td>			
								</tr>						
								<tr>			
								<td><b>Nationalität</b></td>			
								<td>Schweiz, Russland</td>			
								</tr>
							</tbody>				
						</table>
					</div>
				</div>
				
				<div className="box">
					<div className="box_title">
						<h4>Bruder</h4>
					</div>
					<div className="box_content">
						<table>	
							<tbody>	
								<tr>			
								<td><b>Name</b></td>			
								<td>Michail Shevoroshkin</td>			
								</tr>		
								<tr>			
								<td><b>Geburtsdatum</b></td>			
								<td>22.11.2004</td>			
								</tr>
								<tr>			
								<td><b>Beruf</b></td>			
								<td>Schüler, Sekundar</td>			
								</tr>	
							</tbody>		
						</table>
					</div>
				</div>	
				
				<div className="box">
					<div className="box_title">
						<h4>Bruder</h4>
					</div>
					<div className="box_content">
						<table>
							<tbody>			
								<tr>			
								<td><b>Name</b></td>			
								<td>Nikolay Shevoroshkin</td>			
								</tr>		
								<tr>			
								<td><b>Geburtsdatum</b></td>			
								<td>05.08.2006</td>			
								</tr>
								<tr>			
								<td><b>Beruf</b></td>			
								<td>Schüler, Gymnasium</td>			
								</tr>
							</tbody>			
						</table>
					</div>
				</div>	
				
			</div>
			
			<div className="home_hobbies section">
				<div className="section_title"><h2>Hobbies</h2></div>		
				<div className="box">
					<div className="box_title">
						<h4>Musik</h4>
					</div>
					<div className="box_content">
						<p>Seit meinem 7. Lebensjahr ging ich in den Gitarrenunterricht. Musik spielte in meinem Leben andauernd eine sehr wichtige Rolle. Heutzutage besuche ich die Kurse zwar nicht mehr aber musiziere noch in einer kleinen Band, lerne Schlagzeug spielen und produziere für mich elektronische Musik oder HipHop Beats auf meinem PC.</p>
					</div>
				</div>
				
				<div className="box">
					<div className="box_title">
						<h4>Kunst</h4>
					</div>
					<div className="box_content">
						<p>Nicht nur durch Musik, sondern auch durch die Kunst kann ich meine Gefühle wiedergeben und mich stundenlang damit befassen. Sei es skizzieren auf Papier, malen auf der Leinwand, sprayen oder designen einer Webseite, ich verspüre dabei immer eine Euphorie, die mit keiner anderen Tätigkeit vergleichbar ist.</p>
					</div>
				</div>	

				<div className="box">
					<div className="box_title">
						<h4>CEVI</h4>
					</div>
					<div className="box_content">
						<p>Seit dem Jahr 2006 besuche ich regelmässig die CEVI Schwamendingen. Vor ungefähr 5 Jahren hatte ich meinen zweiten Abschluss als Gruppenleiter absolviert. Leider konnte ich in den letzten Jahren aufgrund der Schule und des Prüfungsstress nicht jeden Samstag dabei sein. Aber da ich mich mit Kindern gut verstehe und mir die Natur sehr wichtig ist, bin ich immer noch Teil unserer Gruppe.</p>
					</div>
				</div>

				<div className="box">
					<div className="box_title">
						<h4>Sport</h4>
					</div>
					<div className="box_content">
						<p>In meiner Freizeit bin ich nicht nur mit Kreativem beschäftigt, sondern treibe auch gern Sport. Dazu gehört Leichtathletik, Velofahren, Skateboarden und Tischtennis spielen. Vor allem gefällt es mir, im Wald joggen zu gehen und mit Freunden im Skatepark oder auf der Strasse Skateboard fahren und dabei neue Tricks versuchen zu meistern.</p>
					</div>
				</div>
				
			</div>

			<div className="home_school section">
				<div className="section_title"><h2>Besuchte Schulen</h2></div>
				<div className="box">
					<div className="box_title">
						<h4>Informatikmittelschule</h4>
					</div>
						<div className="box_content">
						<p><b>Hottingen</b></p>
						<p>2017 - 2020</p>
					</div>
				</div>
				
				<div className="box">
					<div className="box_title">
						<h4>Sekundarschule</h4>
					</div>
					<div className="box_content">
						<p><b>Herzogenmühle</b></p>
						<p>2016 - 2017</p>
					</div>
				</div>

				<div className="box">
					<div className="box_title">
						<h4>Gymnasium</h4>
					</div>
					<div className="box_content">
						<p><b>Hohe Promenade</b></p>
						<p>2014 - 2016</p>
					</div>
				</div>
				
				<div className="box">
					<div className="box_title">
						<h4>Primarschule</h4>
					</div>
					<div className="box_content">
						<p><b>Probstei</b></p>
						<p>2008 - 2014</p>
					</div>
				</div>
			</div>
        </div>
    )
}

export default Home;