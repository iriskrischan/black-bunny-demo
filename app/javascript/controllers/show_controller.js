import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets=[ "input", "card" ]

  connect() {
    const defaultId = this.element.dataset.resEditId
    console.log(defaultId)

    const allResCards = document.querySelectorAll(".reservation-card")

    allResCards.forEach(card => {
      if (card.dataset.resId === defaultId) {
        card.classList.add("highlighted")
      }
    })
  }

  showInfo(event) {
    const resId = this.element.dataset.resId
    const resUpdateForm = document.querySelector(`[data-id="${resId}"]`)
    const activeForm = document.querySelector(".form-active")

    const card = this.cardTarget
    const allCards = document.querySelectorAll(".highlighted");

    allCards.forEach(card => {
      card.classList.remove("highlighted")
    })

    card.classList.add("highlighted")

    activeForm.className = ("d-none")
    resUpdateForm.className = ("form-active")

  }

}
