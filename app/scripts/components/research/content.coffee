React = require 'react'
Thesis = require './../../service/thesis'


selectMenu = React.createClass
  displayName:'selectMenu'
  eventHandler:(e)->
    @props.switchOptions $(e.target).find('option:selected').val()
    
  render:->
    yearArr =@props.yearArr
    options = yearArr.map((val)=>
      <option value={val} >class of {val+1911}</option>
      )

    <div>
      <select onChange={@eventHandler}>
        {options}
      </select>
    </div>


Publication = React.createClass
  displayName:'Publication'
  getInitialState:->
    'yearArr': _.pluck(Thesis.getThesisListByYear(),"year")
    'initialYear':_.pluck(Thesis.getThesisListByYear(),"year")[0]
  displayHandler:(year)->
    @setState
       currentYear: parseInt(year)
    
  render :->
    year =  if @state.currentYear then @state.currentYear else @state.initialYear
    dataSet = _.first(_.where(Thesis.getThesisListByYear(),{'year':year})).dataSet
    console.log dataSet
    <div id="publications">
        <selectMenu yearArr={@state.yearArr} switchOptions={@displayHandler}/>
        <h1>FatNo {year+1911}</h1>
        <p>publications  </p>


    </div>

These = React.createClass
  displayName:'These'
  render :->
    <div id="theses">
        <h1>FatNo</h1>
        <p>theses</p>
    </div>

Content = React.createClass
  displayName:'Content'
  render:->
    display={}
    if @props.displayItem is 'publications'
      display = 
        <div>
          <Publication />
        </div>
    else
      display = 
        <div>
          <These />
        </div>

    display


module.exports = Content
