`/** @jsx React.DOM */`
console.log 'faculty loaded'
Teacher = require('../service/teacher')
React = require('react')
Faculty = React.createClass
  componentDidMount:()->
    console.log '[componentsDidMount]'
    $('button').click((e)->
      e.preventDefault()
      $target = $(e.target)
      console.log 'button click',$target.attr('id')
      )
    

  render: ->
    teacherList = Teacher.getList('en').map((value,index)->
      domain = ""
      if (value.domain).length>80
        domain = (value.domain).substr(0,80)+"..."
      else
        domain = value.domain

        
      <div> 
          <div className="col-lg-4">
            <img className="img-circle" width={140} height={140} src="images/carousel/carousel_2.jpg"/>
            <h3>{value.name}</h3>
            <p>{domain}</p>
            <p><button  ref={'detail_btn_'+(value.id)}  id={value.id} className="btn btn-default"  >View details &raquo;</button></p>
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
    

module.exports = Faculty