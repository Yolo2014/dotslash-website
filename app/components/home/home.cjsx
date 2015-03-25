Carousel = require 'react-responsive-carousel/components/Carousel.js'

sliderImages = [
    url: require './ad1.jpg'
  ,
    url: require './ad2.jpg'
  ,
    url: require './ad3.jpg'
  ]

require './home.styl'


module.exports = React.createClass


  render: ->
    <h1> THIS IS HOME PAGE!</h1>
    <div className="slider">
      <Carousel type="slider" items={ sliderImages } showControls={true} showStatus={false} />
    </div>
