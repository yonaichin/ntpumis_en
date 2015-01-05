React = require 'react'
cx = require 'react/lib/cx'


NavItem = React.createClass
  
  eventHandler:->
    @props.switchTab(@props.navsItemId,@props.href)
  render:->
    classes = cx
      'active': if @props.currentActiveID is @props.navsItemId then true else false

    #NavItem render return starts
    <li className={classes} onClick={@eventHandler}><a>{@props.title}</a></li>

Sidebar = React.createClass
  displayName: 'Sidebar'
  getInitialState: ->
    currentActiveID: 0

  eventHandler: (idx,href)->
    @props.displayItem href
    @setState
      currentActiveID:idx
  render:->
    NavItemsContent = [
      {
        title: "Presentations and Publications"
        href: "publications"
      }
      {
            title: "Theses"
        href: "theses"
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
