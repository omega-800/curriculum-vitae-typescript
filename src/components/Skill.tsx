
function Skill(title:string, skills:string[]){
    return(
    <div className="box">
        <div className="box_title">
            <h4>{title}</h4>
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
)
}

export default Skill;