#
# 路由入口
#

require 'init'

Base = require 'components/base/base'
Home = require 'components/home/home'
About = require 'components/about/about'
Bussiness = require 'components/bussiness/bussiness'
Contact = require 'components/contact/contact'

routes =
  <Router.Route handler={Base}>
    <Router.Route name="Home" path="/" handler={Home}/>
    <Router.Route name="About" path="/about" handler={About}/>
    <Router.Route name="Bussiness" path="/bussiness" handler={Bussiness}/>
    <Router.Route name="Contact" path="/contact" handler={Contact}/>
  </Router.Route>

Router.run routes, (Handler) ->
  React.render <Handler/>, document.getElementById 'app'
