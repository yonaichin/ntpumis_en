React = require 'react'
cx = require 'react/lib/cx'


NavItem = React.createClass
  getInitialState: ->
    currentActiveID:1
  eventHandler:->
    @props.switchTab(@props.navsItemId)
  render:->
    classes = cx
      'active': if @props.currentActiveID is @props.navsItemId then true else false

    #NavItem render return starts
    <li className={classes} onClick={@eventHandler}><a href={@props.href}>{@props.title}</a></li>

Sidebar = React.createClass
  displayName: 'Sidebar'
  getInitialState: ->
    currentActiveID: 0

  eventHandler: (idx)->
    @setState
      currentActiveID:idx
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
    ].map((val,idx)=>
      <NavItem href = {val.href}
                       title ={val.title}
                       navsItemId={idx}
                       currentActiveID={@state.currentActiveID}
                       switchTab={@eventHandler}
                       />
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
