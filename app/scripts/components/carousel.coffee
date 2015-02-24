`/** @jsx React.DOM */`

React = require('react')
ReactBootstrap = require('react-bootstrap')
carousel = ReactBootstrap.Carousel
carouselItem = ReactBootstrap.CarouselItem

Carousel = React.createClass
  render: ->
    <div>
    <carousel>
      <carouselItem>
        <img width={900} height={500} alt="900x500" src="images/carousel/carousel_1.jpg"/>
        <div className="carousel-caption">
          <h3>Welcome to NTPU MIS</h3>
        </div>
      </carouselItem>
      <carouselItem>
        <img width={900} height={500} alt="900x500" src="images/carousel/carousel_2.jpg"/>
        <div className="carousel-caption">
          <h3>Welcome to NTPU MIS</h3>
        </div>
      </carouselItem>
      <carouselItem>
        <img width={900} height={500} alt="900x500" src="images/carousel/carousel_3.jpg"/>
        <div className="carousel-caption">
          <h3>Welcome to NTPU MIS</h3>
        </div>
      </carouselItem>
    </carousel>
    </div>



module.exports = Carousel
