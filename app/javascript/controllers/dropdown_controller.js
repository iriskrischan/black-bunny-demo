import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets=[ "separatorButton", "cardCollapse" ]

  connect() {
  }

  dropdown(event) {
    this.cardCollapseTarget.classList.toggle("d-none")
    console.log(this.separatorButtonTarget.querySelector(`img`))
    const image = this.separatorButtonTarget.querySelector(`img`)
    image.classList.toggle("rotate")
  }

}
