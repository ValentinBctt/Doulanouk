# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "controllers"

# config/importmap.rb
pin "application", preload: true

# Ajoute React et ReactDOM
pin "react", to: "https://cdn.skypack.dev/react"
pin "react-dom", to: "https://cdn.skypack.dev/react-dom"
pin_all_from "app/javascript/components", under: "components"
pin "application", preload: true
pin "controllers", to: "controllers.js"
