`/** @jsx React.DOM */`
console.log 'calendar loaded'
React = require('react')
Calendar = React.createClass

  componentDidMount : ->
    $calendar = $(@refs.calendar.getDOMNode())
    $calendar.fullCalendar(
      header:
        left:'prev,next today'
        center:'title'
        right: 'month,agendaWeek,agendaDay'
      editable:false
      eventClick:(event, jsEvent, view)->
        console.log event
      events: [
        {
          title: "All Day E2vent"
          start: "2014-12-01"
          description:"hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii"
          allDay:true
        }
        {
          title: "Long Event"
          start: "2014-12-07"
          end: "2014-12-10"
        }
        {
          id: 999
          title: "Repeating Event"
          start: "2014-12-09T16:00:00"
        }
        {
          id: 999
          title: "Repeating Event"
          start: "2014-12-16T16:00:00"
        }
        {
          title: "Conference"
          start: "2014-12-12"
          end: "2014-12-13"
        }
        {
          title: "Meeting"
          start: "2014-12-12T10:30:00"
          end: "2014-12-12T12:30:00"
        }
        {
          title: "Lunch"
          start: "2014-12-12T12:00:00"
        }
        {
          title: "Meeting"
          start: "2014-12-12T14:30:00"
        }
        {
          title: "Happy Hour"
          start: "2014-12-12T17:30:00"
        }
        {
          title: "Dinner"
          start: "2014-12-12T20:00:00"
        }
        {
          title: "Birthday Party"
          start: "2014-12-13T07:00:00"
        }
        {
          title: "Click for Google"
          url: "http://google.com/"
          start: "2014-12-28"
        }
      ]
    # renderCalendar()  
      )
  render: ->
    `<div className="ui vertical alternate stripe segment">
            <div className="ui stackable center aligned page grid">
                <div className="fourteen wide column">
                    
                    <h1 className="ui header">
                        NTPU Events
                    </h1>                 
                    <div className="twelve wide column">
                      <div ref="calendar"></div>
                    </div>
                   
                  </div>
              </div>
            </div>`
 
module.exports = Calendar
