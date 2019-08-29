import { Controller } from 'stimulus';

export default class extends Controller {
  connect() {
    if (!this.element.querySelector('.soda-aside')) {
      this.element.querySelector('.soda-layout__burger').classList.add('d_n');
    }
  }

  toggle() {
    this.element.classList.toggle('soda-layout_menu-visible');
  }
}
