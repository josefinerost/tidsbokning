import calendars from 'application/calendars'
import datepicker from 'application/datepicker'

document.addEventListener('turbolinks:load', () => {
  calendars.initialize();
  datepicker.initialize();
});

document.addEventListener('turbolinks:before-cache', () => {
  calendars.remove();
  datepicker.remove();
});
