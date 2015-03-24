Header = require 'components/header/header'
Footer = require 'components/footer/footer'
require './base.styl'

module.exports = React.createClass

  render: ->
    <div>
      <Header />
      <Router.RouteHandler />
      <Footer />
    </div>
