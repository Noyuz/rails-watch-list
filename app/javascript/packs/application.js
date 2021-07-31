// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")

import 'bootstrap'
import { initSelect2 } from '../components/init_select2';
import AOS from 'aos';
import 'aos/dist/aos.css';
import { LoadDynamicBannerText } from '../components/banner'

document.addEventListener("turbolinks:load", () => {
  AOS.init();
  initSelect2();
    if (!window.location.href.includes("list")) {
      LoadDynamicBannerText();
    }
  });
