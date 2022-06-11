import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["button", "overlay"];

  active() {
    console.log("im active");
    const btn = this.buttonTarget;
    const overlay = this.overlayTarget;
    console.log(overlay);
    btn.classList.toggle("active");
    btn.classList.toggle("not-active");
    overlay.classList.toggle("open");
  }
}
