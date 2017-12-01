import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr(".datepicker", {
  altInput: true,
  enableTime: true,
  minDate: "today",
  time_24hr: true,
  locale: {
    "firstDayOfWeek": 1 // start week on Monday
  }
})
