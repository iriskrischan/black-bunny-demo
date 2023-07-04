import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="res-highlight"
export default class extends Controller {
static targets=[ "resIcon" ]

  connect() {
    const icon = this.resIconTarget
    icon.classList.add("icon-highlighted")
  }
}
