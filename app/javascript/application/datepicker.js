const datepicker = {
  initialize() {
    flatpickr('.datepicker', {
      enableTime: true,
      time_24hr: true
    })
  },
  remove() { const pickers = document.querySelectorAll('.datepicker')
    Array.from(pickers).forEach((picker) => {
      const fp = picker._flatpickr
      if (fp) {
        fp.destroy()
      }
    })
  }
};

export default datepicker;
