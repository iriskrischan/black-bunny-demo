import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

// Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = [ "dateInput", "coversInput", "timeSlotSelect" ]
  connect() {
    this.initializeFlatpickr();
  }

  initializeFlatpickr() {
    const dateInput = this.dateInputTarget;
    const timeSlotSelect = this.timeSlotSelectTarget;

    flatpickr(dateInput, {
      onChange: (selectedDates, dateStr, instance) => {
        if (selectedDates.length > 0) {
          const selectedDate = selectedDates[0];

          // console.log(selectedDate)
          this.loadTimeSlots(selectedDate);
        }
      },
    });
  }

  loadTimeSlots(selectedDate) {
    const dateInput = this.dateInputTarget.value;
    const coversInput = this.coversInputTarget.value;
    // console.log(coversInput)
    // console.log(dateInput)
    const url = `/time_slots?date=${dateInput}&covers=${coversInput}`;

    fetch(url)
      .then((response) => response.json())
      .then((data) => {
        // console.log(data);
        this.populateTimeSlots(data);
      });
  }

  populateTimeSlots(timeSlots) {
    const timeSlotSelect = this.timeSlotSelectTarget;

    // Clear the existing options
    timeSlotSelect.innerHTML = '';

    const option = document.createElement('option');
    timeSlotSelect.appendChild(option);
    option.text = "Select time";

    // Add the new options
    timeSlots.forEach((timeSlot) => {
      const option = document.createElement('option');
      option.value = timeSlot.id;
      // console.log(timeSlot)
      const startTime = new Date(timeSlot.start_time);
      // console.log(startTime)
      const startTimeString = startTime.toLocaleTimeString(navigator.language, {
        hour: 'numeric',
        minute: 'numeric',
        hour12: true,
      });
      option.dataset.time = startTimeString;

      // console.log(startTimeString)


      option.text = startTimeString;
      timeSlotSelect.appendChild(option);
    });
  }
}
