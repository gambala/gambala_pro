import 'bundles/modernizr';
import 'element-closest';
import 'what-input';
import Rails               from 'rails-ujs';
import Turbolinks          from 'turbolinks';
import ServiceWorkerLoader from 'scripts/ServiceWorkerLoader';
import WebFontLoader       from 'scripts/WebFontLoader';

Rails.start();
ServiceWorkerLoader.start();
Turbolinks.start();

WebFontLoader.load('SF UI Display', 'sfui-display-loaded');
WebFontLoader.load('SF UI Text', 'sfui-text-loaded');

if (document.readyState !== 'loading') {
  const event = document.createEvent('Event');
  event.initEvent('DOMContentLoaded', true, true);
  window.document.dispatchEvent(event);
}
