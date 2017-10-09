function load() {
  $('#bookingcalendar').fullCalendar({
    header: {
      right: 'agendaWeek, month'
    },
    firstDay: 1,
    events: '/bokningar.json',
    views: {
      month: {
        displayEventTime: false
      }
    }
  })
}

document.addEventListener('turbolinks:load', load)
