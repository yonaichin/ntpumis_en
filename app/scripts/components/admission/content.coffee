React = require 'react'

Regulations = React.createClass
  displayName:'Regulations'
  render :->
    <div>
        <h1>FatNo</h1>
        <p>regulations</p>
    </div>

Examinations = React.createClass
  displayName:'Examinations'
  render :->
    <div>
        <h1>FatNo</h1>
        <p>examinations</p>
    </div>

Content = React.createClass
  displayName:'AdmissionContent'
  render:->
    display={};
    if @props.displayItem is 'regulations'
      display = 
        <div>
          <Regulations />
        </div>
    else
      display = 
        <div>
          <Examinations />
        </div>

    display

module.exports = Content