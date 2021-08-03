import Typed from 'typed.js';

const LoadDynamicBannerText = () => {
  const element = document.getElementById('banner-typed-text');
  if (element) {
    new Typed('#banner-typed-text', {
      strings: ["Save any kind of movies"],
      typeSpeed: 80,
      loop: false
    });
  }
}

export { LoadDynamicBannerText };
