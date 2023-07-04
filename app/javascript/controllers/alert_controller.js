import { Controller } from "@hotwired/stimulus"
import Swal from "sweetalert2";

// Connects to data-controller="alert"
export default class extends Controller {
  static targets = ['dateInput', 'coversInput', 'timeInput']
  connect() {
    console.log("alert")
    // this.initSweetalert()
  };

  test(e) {
    console.log(e.target.value)
    console.log(e.currentTarget)
    e.target.querySelectorAll('option').forEach((option) => {
      if (option.value === e.target.value) {
        e.target.dataset.time = option.dataset.time
      }
    })
    // e.target.dataset.time = e.;
    // console.log(e.target.querySelector('option'))
  }

  initSweetalert(e) {
    e.preventDefault()
    const url = e.target.dataset.afterSaveUrl
    const startDate = this.dateInputTarget.value
    Swal.fire( {
      imageUrl: 'https://www.black-bunny.org/assets/logo-5f5e763ffd9c6eb1e5d6066bddad6fe7c7841a90eb879796d9138dd8b880618a.png',
      imageHeight: 150,
      title: 'Reservation Summary',
      html: `<strong>Date:</strong>  ${this.dateInputTarget.value} <br> <br>` +
            `<strong>Time:</strong>  ${this.timeInputTarget.dataset.time} <br> <br>` +
            `<strong>Number of guests:</strong> ${this.coversInputTarget.value}`,
      confirmButtonText: 'Back to Reservations'
     }
      // console.log(this.timeInputTarget.dataset.time),
      // console.log(this.dateInputTarget.value),
      // console.log(this.coversInputTarget.value)
    ).then((action) => {
      if (action.isConfirmed) {
        window.location.href = `${url}?start_date=${startDate}`
      }
    })
    .catch(event.preventDefault())
  }
}
