import 'bundles/modernizr';
import 'element-closest';
import 'what-input';
import $                   from 'jquery';
import Rails               from 'rails-ujs';
import SmoothScrollLinks   from 'scripts/SmoothScrollLinks';
import Turbolinks          from 'turbolinks';
import WebFontLoader       from 'scripts/WebFontLoader';

window.$ = $;
window.jQuery = $;

Rails.start();
SmoothScrollLinks.start();
Turbolinks.start();

WebFontLoader.load('SF UI Display', 'sfui-display-loaded');
WebFontLoader.load('SF UI Text', 'sfui-text-loaded');

if (document.readyState !== 'loading') {
  const event = document.createEvent('Event');
  event.initEvent('DOMContentLoaded', true, true);
  window.document.dispatchEvent(event);
}
