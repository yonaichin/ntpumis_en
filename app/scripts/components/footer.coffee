`/** @jsx React.DOM */`
React = require('react')
Footer = React.createClass
  render: ->
    <footer>
      <div className="container">
        <div className="col-md-2"></div>
        <div className="col-md-8">
        <h4>NTPU MIS </h4>
         <p className="text-muted">National Taipei University, 151, University Rd., San Shia, Taipei, 237 Taiwan </p>
         <p className="text-muted">2014 National Taiwan University Institute of Information Management. All Rights Reserved.</p>
         <i className="glyphicon glyphicon-hand-right"></i> Find us on  <a target="_blank" href="//www.facebook.com/176780765671055">Facebook</a>
        </div>
        </div>
    </footer>

module.exports = Footer


