React = require 'react'
Thesis = require './../../service/thesis.coffee'
ReactBootstrap = require('react-bootstrap')
TabbedArea = ReactBootstrap.TabbedArea
TabPane = ReactBootstrap.TabPane


TableContent = React.createClass
  displayName:'TableContent'
  render:->
    tableData = {}
    tableHeader = {}
    if @props.displayContent is 'publications'
      tableHeader =
        <td>conference</td>

      tableData = @props.tableData.map((val,idx)->
        <tr key={idx}>
          <td>{idx+1}</td>
          <td>{val.name}</td>
          <td>{val.student_id}</td>
          <td>{val.teacher_name}</td>
          <td>{val.conference}</td>
        </tr>
      )
    else
      tableData = @props.tableData.map((val,idx)->
        <tr key={idx}>
          <td>{idx+1}</td>
          <td>{val.name}</td>
          <td>{val.student_id}</td>
          <td>{val.teacher_name}</td>
        </tr>
      )

    <table className="table">
      <thead>
        <td>No.</td>
        <td>title</td>
        <td>student</td>
        <td>teacher</td>
        {tableHeader}
      </thead>
      <tbody>
        {tableData}
      </tbody>
    </table>
selectMenu = React.createClass
  displayName:'selectMenu'
  eventHandler:(e)->
    @props.switchOptions $(e.target).find('option:selected').val()

  render:->
    yearArr =@props.yearArr
    options = yearArr.map((val,idx)=>
      <option key={idx} value={val} >class of {val+1911}</option>
      )

    <div>
      <select className="form-control col-md-4" onChange={@eventHandler}>
        {options}
      </select>
    </div>


These = React.createClass
  displayName:'These'
  getInitialState:->
    'yearArr': _.pluck(@props.theseList,"year")
    'initialYear':_.pluck(@props.theseList,"year")[0]
  displayHandler:(year)->
    @setState
       currentYear: parseInt(year)
  render :->
    year =  if @state.currentYear then @state.currentYear else @state.initialYear
    dataSet = _.first(_.where(@props.theseList,{'year':year})).dataSet

    <div id="theses">
        <h1>Thesis {year+1911}</h1>
        <selectMenu yearArr={@state.yearArr} switchOptions={@displayHandler}/>
        <TableContent tableData={dataSet} displayContent="thesis"/>

    </div>
Publication = React.createClass
  displayName:'Publication'
  getInitialState:->
    'yearArr': _.pluck(@props.publicationList,"year")
    'initialYear':_.pluck(@props.publicationList,"year")[0]
  displayHandler:(year)->
    @setState
       currentYear: parseInt(year)

  render :->
    year =  if @state.currentYear then @state.currentYear else @state.initialYear
    dataSet = if _.first(_.where(@props.publicationList,{'year':year})) then _.first(_.where(@props.publicationList,{'year':year})).dataSet
    if dataSet
      <div id="publications">

          <h1>Publications {year+1911}</h1>
          <selectMenu yearArr={@state.yearArr} switchOptions={@displayHandler}/>
          <TableContent tableData={dataSet} displayContent="publications"/>

      </div>
    else
      <div>
        <h1>Data is not ready yet</h1>
      </div>

Main = React.createClass
  displayName:'Research'
  getInitialState: ->
    displayItem:'publications'
  displayHandler:(target)->
    @setState
      'displayItem':target
  render:->
    theseList = Thesis.getListByYear('thesis')
    publicationList = Thesis.getListByYear()

    <div>

      <div className="row">
        <div className="col-md-10 col-md-offset-1">
         <TabbedArea defaultActiveKey={1}>
           <TabPane eventKey={1} tab="Presentations and Publications">
             <Publication publicationList={publicationList}/>

           </TabPane>
           <TabPane eventKey={2} tab="Theses">
              <These theseList={theseList}/>
           </TabPane>
          </TabbedArea>
        </div>
      </div>
    </div>

module.exports = Main
