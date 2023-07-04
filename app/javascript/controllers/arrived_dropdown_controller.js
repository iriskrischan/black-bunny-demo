import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets=[ "separatorButtonArrived", "cardCollapseArrived" ]

  connect() {
  }

  dropdownArrived(event) {
    this.cardCollapseArrivedTarget.classList.toggle("d-none")
    const imageArrived = this.separatorButtonArrivedTarget.querySelector(`img`)

    imageArrived.classList.toggle("rotateArrived")
  }

}
