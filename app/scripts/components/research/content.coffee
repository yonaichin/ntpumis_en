React = require 'react'
Thesis = require './../../service/thesis'

showThesis = React.createClass
  render:->
    list = Thesis.getThesisListbyYear('100')
    console.log list
    <div>{list}</div>


Content = React.createClass
  render:->
    <div>
      <div id="publications">
        <showThesis />
        <h1>FatNo</h1>
        <p>65</p>
      </div>
      <hr className="featurette-divider"/> 
      <div id="theses">
        <h1>FatNo</h1>
        <p>232323</p>
      </div>
    </div>



module.exports = Content