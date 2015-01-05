# @jsx React.DOM

React = require('react')
cx = require('react/lib/cx')
Footer = require('./components/footer')
Navbar = require('./components/navbar')
AdmissionContent = require('./components/admission')




Main = React.createClass
  componentWillMount: ->
    $('#loading').show()
  componentDidMount: ->
    $('#loading').hide()
  render: ->
    <div>
    <Navbar />
    <AdmissionContent />
    <Footer />
    </div>

module.exports = React.render(Main(), document.querySelector('#app'))
  