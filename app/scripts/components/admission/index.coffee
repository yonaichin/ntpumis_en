React = require 'react'
Sidebar = require './sidebar'
Content = require './content'

Main = React.createClass
  displayName:'Admission'
  getInitialState: ->
    displayItem:'regulations'
  displayHandler:(target)->
    @setState
      'displayItem':target
  render:->
    <div>
      <div className="row">
        <div className="col-md-2">
           <Sidebar displayItem={@displayHandler} />
        </div>
        <div className="col-md-10">
          <Content  displayItem={@state.displayItem}/>
        </div>
      </div>
    </div>

module.exports = Main