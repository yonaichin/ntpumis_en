`/** @jsx React.DOM */`

React = require('react')
ReactBootstrap = require('react-bootstrap')
Accordion = ReactBootstrap.Accordion
Panel = ReactBootstrap.Panel
Table = ReactBootstrap.Table

courseTable = React.createClass
  render:->
    <div>
      <Table  bordered >
          <thead>
            <tr>
              <td><p align="center">&nbsp;</p></td>
              <td><p align="center"><strong>Name   of Course</strong></p></td>
              <td><p align="center"><strong><span>No.   of </span></strong><strong><span>Credits</span></strong></p>    </td>
              <td><p align="center"><strong><span>Hours  of Class 
              Per Week</span></strong></p></td>
            </tr>
          </thead>
            <tbody>
              <tr><td rowSpan="4"><p align="center"><strong><span>Basic   Courses</span></strong></p></td></tr>
               <tr>
                <td><p align="center"><span>Statistics</span></p></td>
                <td><div align="center">0</div></td>
                <td><div align="center">3</div></td>
              </tr>
              <tr>
                <td><p align="center"><span>Databases   Systems</span></p></td>
                <td><div align="center">0</div></td>
                <td><div align="center">3</div></td>
              </tr>
              <tr>
                <td><p align="center"><span>Data   Architecture</span></p></td>
                <td><div align="center">0</div></td>
                <td><div align="center">3</div></td>
              </tr>
             </tbody>
        </Table>
    </div>
Course = React.createClass
  render: ->
    <div>
    <hr   className="featurette-divider"/>
        <div id="course" className="container marketing">
            <h2><i className="glyphicon glyphicon-book"></i> Course</h2>
              <h3>Curriculum Planning</h3><p>The goals of the Institute of Information Management, National Taipei University were to establish a teaching and research environment that would lay equal emphasis on information management theory and technology, and to cultivate information management talent, in line with the rapid pace of e-adoption in organizations in all sectors.The scope covered by \"information management\" is an extremely broad one; it includes not only systems technology, but also human, organizational and managerial aspects.</p>
             <Accordion>
              <Panel header="Basic Courses" eventKey='1' bsStyle="warning">
                <p>To ensure that the Institute’s graduate students have a solid background in both information and management science, and to ensure that students are ready to take the core course and electives, all students enrolled in the Master program who did not take the specified basic courses during their undergraduate studies or who did not meet the minimum standard in their undergraduate studies are required to take the basic courses along with other courses; the basic courses do not count towards the minimum credit requirement for the awarding of the MBA degree.</p>
                <courseTable />
              </Panel>
              <Panel header="Core Course" eventKey='2' bsStyle="warning">
                <p>The Master Program is designed to achieve effective integration of information technology and management science, while also aiming to cultivate the ability to undertake research. The core courses therefore consist of three groups: information management, business administration and research methodology. Students enrolled in the Master’s program are required to obtain at least 13 credits form core courses (not included the credits for the Master’s Thesis), so as to en sure that all students possess a solid foundation in relevant knowledge.</p>
              </Panel>
              <Panel header="Electives" eventKey='3' bsStyle="warning">
                <p>Course planning for the electives in the Master program were undertaken with reference to the curriculum of other leading universities in Taiwan and overpass.</p>
              </Panel>
              <Panel header="Curriculum Mapping" eventKey='4' bsStyle="warning">
               
                <img className=" img-thumbnail"  src="images/curriculum_mapping.jpg"/>
               
              </Panel>
            </Accordion>
      </div>
    </div>



module.exports = Course