import React from 'react';
import ReactDOM from 'react-dom';
import './Carousel.css';

const {Component} = React;
const {render} = ReactDOM;

class CarouselLeftArrow extends Component<{onClick:any}, {}> {
    render() {
        return (
            <a
                href="#"
                className="carousel__arrow carousel__arrow--left"
                onClick={this.props.onClick}
            >
                &#8918;
            </a>
        );
    }
}
  
class CarouselRightArrow extends Component<{onClick:any}, {}> {
    render() {
        return (
            <a
                href="#"
                className="carousel__arrow carousel__arrow--right"
                onClick={this.props.onClick}
            >
                &#8919;
            </a>
        );
    }
}
  
class CarouselIndicator extends Component<{index: number, activeIndex:number, onClick:any}, {}> {
    render() {
        return (
            <li>
                <a
                className={
                    this.props.index == this.props.activeIndex
                    ? "carousel__indicator carousel__indicator--active"
                    : "carousel__indicator"
                }
                onClick={this.props.onClick}
                />
            </li>
        );
    }
}
  
class CarouselSlide extends Component<{index: number, activeIndex:number, slide:string}, {}> {
    render() {
        return (
            <li
                className={
                    this.props.index == this.props.activeIndex
                    ? "carousel__slide carousel__slide--active"
                    : "carousel__slide"
                }
            >
                <img className="carousel-slide__content" src={this.props.slide}/>
            </li>
        );
    }
}
  
class Carousel extends Component<{title:string, slides:{ src: string; }[]}, {activeIndex:number}> {
    constructor(props: { index: number; activeIndex: number; title:string; slides:{ src: string; }[]}) {
        super(props);

        this.goToSlide = this.goToSlide.bind(this);
        this.goToPrevSlide = this.goToPrevSlide.bind(this);
        this.goToNextSlide = this.goToNextSlide.bind(this);

        this.state = {
        activeIndex: 0
        };
    }

    goToSlide(index: number) {
        this.setState({
        activeIndex: index
        });
    }

    goToPrevSlide(e: React.SyntheticEvent) {
        e.preventDefault();

        let index = this.state.activeIndex;
        let { slides } = this.props;
        let slidesLength = slides.length;

        if (index < 1) {
        index = slidesLength;
        }

        --index;

        this.setState({
        activeIndex: index
        });
    }

    goToNextSlide(e: React.SyntheticEvent) {
        e.preventDefault();

        let index = this.state.activeIndex;
        let { slides } = this.props;
        let slidesLength = slides.length - 1;

        if (index === slidesLength) {
        index = -1;
        }

        ++index;

        this.setState({
        activeIndex: index
        });
    }

    render() {
        return (
            <div className="carousel imgbox">
                <div className="box_title">
                    <h4>{this.props.title}</h4>
                </div>
                <div className="carousel_content">

                <ul className="carousel__indicators">
                        <CarouselLeftArrow onClick={(e: React.SyntheticEvent<Element, Event>) => this.goToPrevSlide(e)} />
                    {this.props.slides.map((slide, index) =>
                        <CarouselIndicator
                        key={index}
                        index={index}
                        activeIndex={this.state.activeIndex}
                        onClick={(e: any) => this.goToSlide(index)}
                        />
                    )}
                    <CarouselRightArrow onClick={(e: React.SyntheticEvent<Element, Event>) => this.goToNextSlide(e)} />
                    </ul>
                    
                    <ul className="carousel__slides">
                    {this.props.slides.map((slide, index) =>
                        <CarouselSlide
                        key={index}
                        index={index}
                        activeIndex={this.state.activeIndex}
                        slide={slide.src}
                        />
                    )}
                    </ul>

                </div>
            </div>
        );
    }
}
  
export default Carousel;
  