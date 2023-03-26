function SimpleBox2({title,text,text2,link}:{
    title:string
    text:string
    text2:string
    link:string
}){
    return( 
        <div className="box">
            <div className="box_title">
                <h4>{title}</h4>
            </div>
            <div className="box_content">
				<a href={link}><b>{text}</b></a>
                <p>{text2}</p>
            </div>
        </div>
    )
}
export default SimpleBox2;