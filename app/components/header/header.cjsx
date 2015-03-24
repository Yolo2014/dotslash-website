require './header.styl'

module.exports = React.createClass

  render: ->
    <header>
      <div className="container">
        <div className="pull-left">
          <img src={require('./logo.png')} />
        </div>
        <div className="pull-right">
          <ul>
            <li><Router.Link activeClassName="active" to='Home'>HOME</Router.Link></li>
            <li><Router.Link activeClassName="active" to='About'>ABOUT</Router.Link></li>
            <li><Router.Link activeClassName="active" to='Bussiness'>DESIGN & DEVELOPMENT</Router.Link></li>
            <li><Router.Link activeClassName="active" to='Contact'>CONTACT</Router.Link></li>
          </ul>
        </div>
        <div className="clearfix"></div>
        
      </div>
    </header>