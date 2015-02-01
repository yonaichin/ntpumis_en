`/** @jsx React.DOM */`
Teacher = require('../service/teacher')
React = require('react')
ReactBootstrap = require('react-bootstrap')
Button = ReactBootstrap.Button
OverlayMixin = ReactBootstrap.OverlayMixin
Modal = ReactBootstrap.Modal
Table = ReactBootstrap.Table
Faculty = React.createClass
  mixins: [OverlayMixin]
  getInitialState: ->
    isModalOpen: false
  handleToggle: (e)->
    detail_id =  if e? then $(e.target).attr('id') else null
    @setState
      isModalOpen: not @state.isModalOpen
      detail_id:detail_id
  renderOverlay:->
    if not @state.isModalOpen
      return <span/>

    teacher_name      =''
    teacher_title     =''
    teacher_degree    =''
    teacher_domain    =''
    teacher_isChair   =false;
    teacher_office    =''
    teacher_email     =''
    teacher_tel       =''
    teacher_extension =''

    @props.teachersData.map((val,idx)=>
      if val.id is parseInt(@state.detail_id)
        teacher_name      = val.name
        teacher_title     =val.title
        teacher_degree    =val.degree
        teacher_domain    =val.domain
        teacher_isChair   =val.is_chair
        teacher_office    =val.office
        teacher_email     =val.email
        teacher_tel       =val.tel
        teacher_extension =val.extension
      )

    <Modal title={teacher_name} onRequestHide={this.handleToggle}>
      <div className="modal-body">
        <Table>
        <h5>{teacher_title.toUpperCase()}</h5>
          <tbody>
            <tr>
              <td>Domain</td>
              <td>{teacher_domain}</td>
            </tr>
            <tr>
              <td>Degree</td>
              <td>{teacher_degree}</td>
            </tr>
            <tr>
              <td>Office</td>
              <td>{teacher_office}</td>
            </tr>
            <tr>
              <td>Tel</td>
              <td>{teacher_tel} #{teacher_extension}</td>
            </tr>
          </tbody>
        </Table>
      </div>
      <div className="modal-footer">
        <Button onClick={@handleToggle}>Close</Button>
      </div>
    </Modal>


  render: ->
    teachersData = @props.teachersData

    teacherList = teachersData.map((value,index)=>
      domain = ""
      if (value.domain).length>80
        domain = (value.domain).substr(0,80)+"..."
      else
        domain = value.domain


      <div>
          <div className="col-lg-4">
            <img className="img-circle" width={140} height={140} src={value.image_url}/>
            <h3>{value.name}</h3>
            <p>{domain}</p>
            <p><button  ref={'detail_btn_'+(value.id)}  id={value.id} onClick={@handleToggle} className="btn btn-default" >View details </button></p>

          </div>
      </div>

    )
    <div>
        <hr id="faculty"  className="featurette-divider"/>
        <div  className="container marketing">
          <h2 ><i className="glyphicon glyphicon-user"></i> Faculty </h2>
          <div className="row">
              {teacherList }
          </div>
          </div>

      </div>







Main = React.createClass
  render: ->
    teachersData = Teacher.getList('en')
    <Faculty teachersData={teachersData}/>

module.exports = Main
