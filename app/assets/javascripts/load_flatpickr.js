function load() {
  flatpickr('.datepicker', {
    enableTime: true,
    time_24hr: true
  })
}

document.addEventListener('turbolinks:load', load)
