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
}

document.addEventListener('turbolinks:load', load)
