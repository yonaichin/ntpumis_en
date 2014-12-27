`/** @jsx React.DOM */`
Navbar = require('./components/navbar')
Footer = require('./components/footer')
Faculty = require('./components/faculty')
Course = require('./components/Course')
React = require('react')


Main = React.createClass
  componentWillMount: ->
    $('#loading').show()
  componentDidMount: ->
    $('#loading').hide()
  render: ->
    <div>
    <Navbar />
   
    <Faculty />
    <Course />
    
    <Footer />
    </div>
    
 
module.exports = React.renderComponent(Main(), document.querySelector('#app'))
