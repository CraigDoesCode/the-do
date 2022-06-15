import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="go"
export default class extends Controller {
  static targets = ["modal"];
  connect() {
    console.log("helllloooo its me the modal controller");
  }

  open() {
    console.log("im open, where are you");

    document.body.classList.add("modal-open");
    this.modalTarget.setAttribute("style", "display: block;");
    this.modalTarget.classList.add("show");
    document.body.innerHTML += '<div class="modal-backdrop fade show"></div>';
  }

  close() {
    console.log("close working");
    document.body.classList.remove("modal-open");
    this.modalTarget.removeAttribute("style");
    this.modalTarget.classList.remove("show");
    document.getElementsByClassName("modal-backdrop")[0].remove();
  }
}
