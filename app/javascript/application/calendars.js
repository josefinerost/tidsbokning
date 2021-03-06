const calendars = {
  initialize() {
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
      height: 500,
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
  },
  remove() {
    $('#bookingcalendar').html('')
    $('#eventcalendar').html('')
  }
};

export default calendars;
