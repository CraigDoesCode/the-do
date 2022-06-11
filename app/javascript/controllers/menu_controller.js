import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["button"];

  active() {
    console.log("im active");
    const btn = this.buttonTarget;
    console.log(btn);
    btn.classList.toggle("active");
    btn.classList.toggle("not-active");
  }
}
