import React from "react";
import ReactDOM from "react-dom";
import DoulaPresentation from "./components/DoulaPresentation";


document.addEventListener("DOMContentLoaded", () => {
  // Première fonctionnalité : monter le composant React
  const reactRoot = document.getElementById("react-root");
  if (reactRoot) {
    ReactDOM.render(React.createElement(DoulaPresentation), reactRoot);
  }

  // Deuxième fonctionnalité : gestion des ancres
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

import "trix"
import "@rails/actiontext"
