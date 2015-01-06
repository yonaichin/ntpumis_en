React = require 'react'
Thesis = require './../../service/thesis'




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
          <td>{val.id}</td>
          <td>{val.name_e}</td>
          <td>{val.student_id}</td>
          <td>{val.teacher_name}</td>
          <td>{val.conference}</td>
        </tr>
      )
    else
      tableData = @props.tableData.map((val,idx)->
        <tr key={idx}>
          <td>{val.id}</td>
          <td>{val.name_e}</td>
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


Publication = React.createClass
  displayName:'Publication'
  getInitialState:->
    'yearArr': _.pluck(@props.publicationsList,"year")
    'initialYear':_.pluck(@props.publicationsList,"year")[0]
  displayHandler:(year)->
    @setState
       currentYear: parseInt(year)

  render :->
    year =  if @state.currentYear then @state.currentYear else @state.initialYear
    dataSet = _.first(_.where(@props.publicationsList,{'year':year})).dataSet

    <div id="publications">

        <h1>Publications {year+1911}</h1>
        <selectMenu yearArr={@state.yearArr} switchOptions={@displayHandler}/>
        <TableContent tableData={dataSet} displayContent="publications"/>

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

Content = React.createClass
  displayName:'Content'
  render:->
    display={}
    if @props.displayItem is 'publications'
      display =
        <div>
          <Publication publicationsList={@props.publicationsList}/>
        </div>
    else
      display =
        <div>
          <These theseList={@props.theseList}/>
        </div>

    display


module.exports = Content
