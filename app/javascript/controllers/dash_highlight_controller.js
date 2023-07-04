import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="res-highlight"
export default class extends Controller {
static targets=[ "dashIcon" ]

  connect() {
    const icon = this.dashIconTarget
    icon.classList.add("icon-highlighted")
  }
}
