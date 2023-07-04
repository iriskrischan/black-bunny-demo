import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets=[ "separatorButtonNoshow", "cardCollapseNoshow" ]

  connect() {
  }

  dropdownNoshow(event) {
    this.cardCollapseNoshowTarget.classList.toggle("d-none")
    const imageNoshow = this.separatorButtonNoshowTarget.querySelector(`img`)

    imageNoshow.classList.toggle("rotateNoshow")
  }

}
