import "bootstrap";



    const calendar = document.getElementById('calendar');
    flatpickr(calendar, {
    enableTime:      true,
    altInput:        true,
    minDate:         "today",
    altFormat:       "F j, Y at h:i K",
    dateFormat:      "Y-m-d H:i",
    defaultHour:     23,
    defaultMinute:   59,
    minuteIncrement: 1
    });

    const calendar1 = document.getElementById('calendar1');
    flatpickr(calendar1, {
    enableTime:      true,
    altInput:        true,
    minDate:         "today",
    altFormat:       "F j, Y at h:i K",
    dateFormat:      "Y-m-d H:i",
    defaultHour:     23,
    defaultMinute:   59,
    minuteIncrement: 1
    });
