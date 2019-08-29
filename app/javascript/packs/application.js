import 'bundles/modernizr';
import 'element-closest';
import 'what-input';

import $                   from 'jquery';
import Rails               from 'rails-ujs';
import SmoothScrollLinks   from 'scripts/SmoothScrollLinks';
import Turbolinks          from 'turbolinks';
import WebFontLoader       from 'scripts/WebFontLoader';
import { Application }            from 'stimulus';
import { definitionsFromContext } from 'stimulus/webpack-helpers';

window.$ = $;
window.jQuery = $;

Rails.start();
SmoothScrollLinks.start();
Turbolinks.start();

WebFontLoader.load('Roboto', 'roboto-loaded');

const application = Application.start();
const context = require.context('controllers', true, /\.js$/);
application.load(definitionsFromContext(context));

if (document.readyState !== 'loading') {
  const event = document.createEvent('Event');
  event.initEvent('DOMContentLoaded', true, true);
  window.document.dispatchEvent(event);
}
