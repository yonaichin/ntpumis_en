# @jsx React.DOM

React = require('react')
Footer = require('./components/footer')
Navbar = require('./components/navbar')
Carousel = require('./components/carousel')
Content = React.createClass
  displayName: 'Main'
  render:->
    <div>
    <hr className="featurette-divider"/> 
    <div className="container marketing">
          <div className="row featurette">
              <div className="col-md-7">
                <h2 className="featurette-heading"> About<span className="text-muted"> IIM</span></h2>
                <p className="lead">
                  The goals of the Institute of Information Management, 
                  National Taipei University were to establish a teaching and research environment 
                  that would lay equal emphasis on information management theory and technology, 
                  and to cultivate information management talent, in line with the rapid pace of e-adoption in organizations in all sectors. 
                  The scope covered by "information management" is an extremely broad one; it includes not only systems technology, 
                  but also human, organizational and managerial aspects.
                  </p>
              </div>
              <div className="col-md-5">
                <img className="featurette-image img-responsive img-rounded" src="images/feature_1.jpg" />
              </div>
            </div>

            <hr className="featurette-divider"/>

            <div className="row featurette">
              <div className="col-md-5">
                <img className="featurette-image img-responsive img-circle" src="images/feature_2.jpg"/>
              </div>
              <div className="col-md-7">
                <h2 className="featurette-heading">Undertake research on new information technologies, <span className="text-muted">to develop new applications for these technologies</span></h2>
                <p className="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.The Institute of Information Management undertakes research on new information technology standards and promotes their adoption by both organizations and individuals. The development of new IT applications is constantly induceing new research topics.</p>
              </div>
            </div>

            <hr className="featurette-divider"/>
            <div className="row featurette">
              <div className="col-md-7">
                <h2 className="featurette-heading"> To contribute <span className="text-muted"> to the development of information management research</span></h2>
                <p className="lead">
                  The Institute is constantly involving in the study of new information technology and its managerial implications. Its research (whether conducted independently or in collaboration with industry) is intended to establish models based on an integrated information management philosophy and systems.
                  </p>
              </div>
              <div className="col-md-5">
                <img className="featurette-image img-responsive img-rounded" src="images/feature_3.jpg" />
              </div>
            </div>

            <hr className="featurette-divider"/>

            <div className="row featurette">
              <div className="col-md-5">
                <img className="featurette-image img-responsive img-circle" src="images/feature_4.jpg"/>
              </div>
              <div className="col-md-7">
                <h2 className="featurette-heading">To move the boundaries of  <span className="text-muted">e-business application research forward</span></h2>
                <p className="lead">National Taipei University has already established a solid foundation in legal and business studies and research. The Institute will carry out cross disciplines with other departments when undertaking teaching and research in the field of e-business.</p>
              </div>
            </div>



    </div>
    </div>
Main = React.createClass
  componentWillMount: ->
    $('#loading').show()
  componentDidMount: ->
    $('#loading').hide()
  render: ->
    <div>
    <Navbar />
    <Carousel />
    <Content />
    <Footer />
    </div>

module.exports = React.render(Main(), document.querySelector('#app'))
  