import Typed from 'typed.js'

function loadDynamicBannerText() {
  new Typed('.banner-text', {
    strings: ["Choose your magical creature today", "Yes, I'm not kidding!", "Choose a magical creature"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText }
