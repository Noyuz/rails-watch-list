// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'bootstrap'
import { initSelect2 } from '../components/init_select2';
import AOS from 'aos';
import 'aos/dist/aos.css';
import { LoadDynamicBannerText } from '../components/banner'

document.addEventListener("turbolinks:load", () => {
    initSelect2();
    AOS.init();
    if (!window.location.href.includes("list")) {
      LoadDynamicBannerText();
    }
  });

$(function() { AOS.init({ offset: 100, duration:700, easing:"ease-out-quad", once:!0 }); 
window.addEventListener('load', AOS.refresh); });

Rails.start()
Turbolinks.start()
ActiveStorage.start()

