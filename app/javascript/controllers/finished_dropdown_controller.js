import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets=[ "separatorButtonFinished", "cardCollapseFinished" ]

  connect() {
  }

  dropdownFinished(event) {
    this.cardCollapseFinishedTarget.classList.toggle("d-none")
    const imageFinished = this.separatorButtonFinishedTarget.querySelector(`img`)

    imageFinished.classList.toggle("rotateFinished")
  }

}
