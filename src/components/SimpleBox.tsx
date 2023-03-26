function SimpleBox({title,text}:{
    title:string
    text:string
}){
    return( 
        <div className="box">
            <div className="box_title">
                <h4>{title}</h4>
            </div>
            <div className="box_content">
                <p>{text}</p>
            </div>
        </div>
    )
}
export default SimpleBox;

