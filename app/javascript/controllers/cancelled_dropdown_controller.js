import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets=[ "separatorButtonCancelled", "cardCollapseCancelled" ]

  connect() {
  }

  dropdownCancelled(event) {
    this.cardCollapseCancelledTarget.classList.toggle("d-none")
    const imageCancelled = this.separatorButtonCancelledTarget.querySelector(`img`)

    imageCancelled.classList.toggle("rotateCancelled")
  }

}
