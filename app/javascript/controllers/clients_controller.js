import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "card" ]

  connect() {
  }

  clientsInfo(event) {

    const selectedClient = event.currentTarget;
    const selectedClientEmail = selectedClient.dataset.email;
    const allClients = document.querySelectorAll(".client-profile")

    console.log(selectedClient)

    allClients.forEach(client => {

      if (client.dataset.resEmail === selectedClientEmail) {
        client.className = ("client-profile client-active")
      } else {
        client.className = ("client-profile d-none")
      }
    })

    const allCards = document.querySelectorAll(".highlighted-clients");

    allCards.forEach(card => {
      card.classList.remove("highlighted-clients")
    })

    selectedClient.classList.add("highlighted-clients")

  }
}
