import React from 'react';
import ReactDOM from 'react-dom';
import './ImageBox.css';
const {Component} = React;
const {render} = ReactDOM;

class ImageBox extends Component<{title:string, image:string}, {}>{
    render(){
    return(
        <div className="imgbox">
            <div className="box_title">
                <h4>{this.props.title}</h4>
            </div>
            <div className="imgbox_content">
                <img src={this.props.image} alt=""/>
            </div>
        </div>
    )
}
}

export default ImageBox;