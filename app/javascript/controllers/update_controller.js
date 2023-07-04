import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
  static targets = [ "dateInput2", "coversInput2", "timeSlotSelect2" ]
  connect() {
    this.initializeFlatpickr();
  }

  initializeFlatpickr() {
    const dateInput2 = this.dateInput2Target;
    const timeSlotSelect2 = this.timeSlotSelect2Target;

    flatpickr(dateInput2, {
      onChange: (selectedDates, dateStr, instance) => {
        document
          .querySelector(".reservation-timeslot")
          .classList.remove("d-none");

        document
          .querySelector(".reservation_timeslot-current")
          .classList.add("d-none");

        this.element
          .querySelector(".reservation-timeslot")
          .classList.remove("d-none");

        this.element
          .querySelector(".reservation_timeslot-current")
          .classList.add("d-none");

        if (selectedDates.length > 0) {
          const selectedDate = selectedDates[0];
          this.loadTimeSlots(selectedDate);
        }
      },
    });
  }

  loadTimeSlots() {
    const dateInput = this.dateInput2Target.value;
    const coversInput = this.coversInput2Target.value;
    const url = `/time_slots?date=${dateInput}&covers=${coversInput}`;

    fetch(url)
      .then((response) => response.json())
      .then((data) => {
        this.populateTimeSlots(data);
      });
  }

  populateTimeSlots(timeSlots) {
    const timeSlotSelect2 = this.timeSlotSelect2Target;

    // Clear the existing options
    timeSlotSelect2.innerHTML = '';

    // Add the new options
    timeSlots.forEach((timeSlot) => {
      const option = document.createElement('option');
      option.value = timeSlot.id;
      const startTime = new Date(timeSlot.start_time);
      const startTimeString = startTime.toLocaleTimeString(navigator.language, {
        hour: 'numeric',
        minute: 'numeric',
        hour12: true,
      });

      option.text = startTimeString;
      timeSlotSelect2.appendChild(option);

    });
  }
}
