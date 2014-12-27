`/** @jsx React.DOM */`
React = require('react')
Navbar = React.createClass
  render: ->
    <div className="navbar-wrapper">
      <div className="container">
        <nav className="navbar navbar-default navbar-fixed-top">
          <div className="container">
            <div className="navbar-header">
              <button type="button" className="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span className="sr-only">Toggle navigation</span>
                <span className="icon-bar"></span>
                <span className="icon-bar"></span>
                <span className="icon-bar"></span>
              </button>
              <a className="navbar-brand" href="index.html">NTPU MIS</a>
            </div>
            <div id="navbar" className="navbar-collapse collapse">
              <ul className="nav navbar-nav">
                <li className="dropdown">
                  <a href="#" className="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span className="glyphicon glyphicon-home" aria-hidden="true"></span> Overview </a>
                  <ul className="dropdown-menu" role="menu">
                    <li><a href="overview.html#faculty">Faculty</a></li>
                    <li><a href="overview.html#course">Course</a></li>
                  </ul>
                </li>
                <li className="dropdown">
                  <a href="#" className="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span className="glyphicon glyphicon-book" aria-hidden="true"></span> Research </a>
                  <ul className="dropdown-menu" role="menu">
                    <li><a href="#">Research Database</a></li>
                    <li><a href="#">Presentations and Publications</a></li>
                    <li><a href="#">Theses</a></li>
                  </ul>
                </li>
                <li className="dropdown">
                  <a href="#" className="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span className="glyphicon glyphicon-road" aria-hidden="true"></span> Admission </a>
                  <ul className="dropdown-menu" role="menu">
                    <li><a href="#">Admission Regulations</a></li>
                    <li><a href="#">Past Examination</a></li>
                    <li><a href="#">Application Instructions</a></li>
                  </ul>
                </li>
                <li className="dropdown">
                  <a href="#" className="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span className="glyphicon glyphicon-bookmark" aria-hidden="true"></span> Conference </a>
                  <ul className="dropdown-menu" role="menu">
                    <li><a href="#"> Marketing Review</a></li>
                    <li><a href="#">Electronic Commerce Studies</a></li>
                  </ul>
                </li>
                
                
              </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>



 
module.exports = Navbar
