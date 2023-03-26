import { useTranslation } from 'react-i18next';

function FamilyBox({relation, name, birthdate, job, nationality}:{
    relation: string, 
    name: string, 
    birthdate: string, 
    job: string, 
    nationality: string
}){
	const { t, i18n } = useTranslation();
    return (
    <div className="box">
        <div className="box_title">
            <h4>{relation}</h4>
        </div>
        <div className="box_content">
            <table>	
                <tbody>	
                    <tr>			
                    <td><b>{t('home_about_name')}</b></td>			
                    <td>{name}</td>			
                    </tr>		
                    <tr>			
                    <td><b>{t('home_about_birthdate')}</b></td>			
                    <td>{birthdate}</td>			
                    </tr>
                    <tr>			
                    <td><b>{t('home_about_job')}</b></td>			
                    <td>{job}</td>			
                    </tr>						
                    <tr>			
                    <td><b>{t('home_about_nationality')}</b></td>			
                    <td>{nationality}</td>			
                    </tr>	
                </tbody>			
            </table>
        </div>
    </div>
)
}
export default FamilyBox;