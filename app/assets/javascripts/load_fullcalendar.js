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
    eventColor: '#7986CB',
    weekNumberTitle: 'V',
    firstDay: 1,
    weekNumbers: true,
    events: '/events.json',
    views: {
      month: {
        displayEventTime: false,
        weekNumberTitle: 'Vecka'
      }
    }
  })
}

function remove_fullcalendar() {
  $('#eventcalendar').html('')
}

document.addEventListener('turbolinks:load', load)
document.addEventListener('turbolinks:before-cache', remove_fullcalendar)
