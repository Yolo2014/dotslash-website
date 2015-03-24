require './header.styl'

module.exports = React.createClass

  render: ->
    <header>
      <div className="container">
        <div className="pull-left">
          <img src={require('./logo.png')} />
        </div>
        <div className="pull-right">
          <div className="phone margin-top-lg pull-right"> CALL 0756 8585885 </div>
          <div className="clearfix"></div>
          <ul className="menu margin-top-xl pull-right">
            <li><Router.Link activeClassName="active" to='Home'>HOME</Router.Link></li>
            <li><Router.Link activeClassName="active" to='About'>ABOUT</Router.Link></li>
            <li><Router.Link activeClassName="active" to='Bussiness'>DESIGN & DEVELOPMENT</Router.Link></li>
            <li><Router.Link activeClassName="active" to='Contact'>CONTACT</Router.Link></li>
            </ul>
          <div className="clearfix"></div>
        </div>
        <div className="clearfix"></div>
        
      </div>
    </header>
