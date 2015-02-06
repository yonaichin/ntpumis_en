React = require 'react'
ReactBootstrap = require('react-bootstrap')
Glyphicon = ReactBootstrap.Glyphicon
ListGroup = ReactBootstrap.ListGroup
ListGroupItem = ReactBootstrap.ListGroupItem

Main = React.createClass
  displayName:'Admission'
  getInitialState: ->
    displayItem:'regulations'
  displayHandler:(target)->
    @setState
      'displayItem':target
  render:->
    <div className="col-md-offset-1 col-md-10">
      <h1>Admission Regulations</h1>
      <div className="col-md-offset-1 col-md-10">
        <br></br>
        <ListGroup>
          <ListGroupItem href="http://www.mis.ntpu.edu.tw/files/admission_regulations/regulations2_104.pdf"><Glyphicon glyph="download" /> Class of 2015 Graduate Regulation for General </ListGroupItem>
          <ListGroupItem href="http://www.mis.ntpu.edu.tw/files/admission_regulations/regulations1_104.pdf"><Glyphicon glyph="download" /> Class of 2015 Graduate Regulation for Interview </ListGroupItem>
          <ListGroupItem href="http://www.mis.ntpu.edu.tw/files/admission_regulations/regulations2_103.pdf"><Glyphicon glyph="download" /> Class of 2014 Graduate Regulation for General </ListGroupItem>
          <ListGroupItem href="http://www.mis.ntpu.edu.tw/files/admission_regulations/regulations1_103.pdf"><Glyphicon glyph="download" /> Class of 2014 Graduate Regulation for Interview </ListGroupItem>
          <ListGroupItem href="http://www.mis.ntpu.edu.tw/files/admission_regulations/regulations2_102.pdf"><Glyphicon glyph="download" /> Class of 2013 Graduate Regulation for General </ListGroupItem>
          <ListGroupItem href="http://www.mis.ntpu.edu.tw/files/admission_regulations/regulations1_102.pdf"><Glyphicon glyph="download" /> Class of 2013 Graduate Regulation for Interview </ListGroupItem>
        </ListGroup>

      </div>
    </div>

module.exports = Main
