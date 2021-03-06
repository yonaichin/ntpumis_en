`/** @jsx React.DOM */`
Navbar = require('./components/navbar')
Footer = require('./components/footer')
Faculty = require('./components/faculty')
Course = require('./components/course')
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
    
 
module.exports = React.render(Main(), document.querySelector('#app'))
