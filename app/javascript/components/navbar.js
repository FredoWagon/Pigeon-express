const initUpdateNavbarOnScroll = () => {
  const navbar = document.getElementById('navbar-scroll');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 470) {
        navbar.classList.add('navbar-lewagon-white');
      } else {
        navbar.classList.remove('navbar-lewagon-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
