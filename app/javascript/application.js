// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("turbo:load", () => {
  // Vérifie si une ancre est présente dans l'URL
  const hash = window.location.hash;
  if (hash) {
    const element = document.querySelector(hash);
    if (element) {
      // Attendre que la page soit entièrement chargée avant de défiler
      window.scrollTo(0, 0); // Fait défiler jusqu'au haut de la page

      // Faire défiler en douceur vers l'élément ciblé et le centrer
      setTimeout(() => {
        element.scrollIntoView({ behavior: "smooth", block: "center" });
      }, 100); // Délai avant de faire défiler, ajustez si nécessaire
    }
  }
});
