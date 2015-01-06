React = require 'react'
Sidebar = require './sidebar'
Content = require './content'
Thesis = require './../../service/thesis.coffee'
Main = React.createClass
  displayName:'Research'
  getInitialState: ->
    displayItem:'publications'
  displayHandler:(target)->
    @setState
      'displayItem':target
  render:->
    publicationsList = Thesis.getListByYear()
    theseList = Thesis.getListByYear('thesis')
    <div>
      <div className="row">
        <div className="col-md-2">
           <Sidebar displayItem={@displayHandler}/>
        </div>
        <div className="col-md-10">
          <Content displayItem={@state.displayItem}
                   publicationsList={publicationsList}
                   theseList={theseList}/>
        </div>
      </div>
    </div>

module.exports = Main
