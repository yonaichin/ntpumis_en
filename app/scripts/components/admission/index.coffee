React = require 'react'
Sidebar = require './sidebar'
Content = require './content'

Main = React.createClass
  render:->
    <div>
      <div className="row">
        <div className="col-md-2">
           <Sidebar />
        </div>
        <div className="col-md-10">
          <Content />
        </div>
      </div>
    </div>

module.exports = Main