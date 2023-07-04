import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="change-status"
export default class extends Controller {
  static targets = [ "icon", "form" ]

  connect() {
    console.log("connected")
  }

  showForm() {
    console.log(this.iconTarget)
    // this.formTarget.classList.remove("d-none")

    document.querySelector(".modal-backdrop").className = ("d-none")

    // const statusModal = document.querySelector(".status-modal")
    // console.log(statusModal)

    // statusModal.insertAdjacentHTML("afterend", '<div class="status-modal-backdrop fade show"</div>')
  }


}
