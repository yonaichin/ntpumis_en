React = require 'react'
cx = require 'react/lib/cx'


NavItem = React.createClass
  getInitialState: ->
    currentActiveID:1
  eventHandler:->
    console.log 'currentID',@props.navsItemId
    @setState 
      currentActiveID: @props.navsItemId
  render:->
    classes = cx
      'active':false
    
    #NavItem render return start
    <li className={classes} onClick={@eventHandler}><a href={@props.href}>{@props.title}</a></li>

Sidebar = React.createClass
  render:->
    NavItemsContent = [
      {
        title: "Presentations and Publications"
        href: "#publications"
      }
      {
        title: "Theses"
        href: "#theses"
      }
    ].map((val,idx)->
      <NavItem href = {val.href}
                       title ={val.title}
                       navsItemId={idx}/>
      )
    Navs = 
      <ul className="nav  nav-stacked nav-pills">
           {NavItemsContent }
      </ul>

    #Sidebar render return starts
    <div>
      {Navs}
    </div>

module.exports = Sidebar