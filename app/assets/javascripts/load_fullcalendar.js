function load() {
  $('#bookingcalendar').fullCalendar({
    header: {
      right: 'today, prev, next, agendaWeek, month'
    },
    firstDay: 1,
    weekNumbers: true,
    events: '/bokningar.json',
    views: {
      month: {
        displayEventTime: false
      }
    }
  })

  $('#eventcalendar').fullCalendar({
    header: {
      right: 'today, prev, next, agendaWeek, month'
    },
    aspectRatio: 2,
    slotDuration: '01:00:00',
    defaultView: 'agendaWeek',
    weekNumberTitle: 'V',
    firstDay: 1,
    weekNumbers: true,
    events: '/events.json',
    views: {
      month: {
        displayEventTime: false
      }
    }
  })
}

document.addEventListener('turbolinks:load', load)
