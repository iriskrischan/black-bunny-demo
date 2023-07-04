import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="res-highlight"
export default class extends Controller {
static targets=[ "clientsIcon" ]

  connect() {
    const icon = this.clientsIconTarget
    icon.classList.add("icon-highlighted")
  }
}
