const mobileMenuToggle = document.getElementById('mobile-menu');
const mainMenu = document.getElementById('main-menu');

mobileMenuToggle.addEventListener('click', () => {
  mainMenu.classList.toggle('active');
});


