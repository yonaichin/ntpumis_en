# @jsx React.DOM

React = require('react')
cx = require('react/lib/cx')
Footer = require('./components/footer')
Navbar = require('./components/navbar')
ResearchContent = require('./components/research')




Main = React.createClass
  componentWillMount: ->
    $('#loading').show()
  componentDidMount: ->
    $('#loading').hide()
  render: ->
    <div>
    <Navbar />
    <ResearchContent />
    <Footer />
    </div>

module.exports = React.render(Main(), document.querySelector('#app'))
  