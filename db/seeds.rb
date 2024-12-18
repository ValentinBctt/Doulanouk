# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb
Prestation.destroy_all

Prestation.create!(
  titre: 'Accompagnement prénatal personnalisé',
  description: 'Accompagnement individuel pour les futures mamans. Préparation à l\'accouchement, conseils sur l\'alimentation, les exercices de relaxation et la gestion du stress.',
  prix: 300,)
  .image.attach(
    io: URI.open("https://res.cloudinary.com/dnojcwwos/image/upload/v1734522732/Doulanouk/fr2bapbiowe8ovo6htnt.jpg"),
    filename: 'fr2bapbiowe8ovo6htnt.jpg',
    content_type: 'image/jpg'
  )

Prestation.create!(
  titre: 'Atelier de préparation à la naissance',
  description: 'Un atelier en groupe pour découvrir les bases de la préparation à la naissance. Discussions sur le travail, les techniques de respiration, et la gestion de la douleur.',
  prix: 150,
  image: Rails.root.join('app', 'assets', 'images', 'preparation.jpg').open
).image.attach(
  io: URI.open("https://res.cloudinary.com/dnojcwwos/image/upload/v1734522733/Doulanouk/vevtwnxvydeemryi7aty.jpg"),
  filename: 'vevtwnxvydeemryi7aty.jpg',
  content_type: 'image/jpg'
)

Prestation.create!(
  titre: 'Accompagnement à l\'accouchement',
  description: 'Présence continue pendant le travail et l\'accouchement pour un soutien émotionnel et physique. Accompagnement à l\'hôpital ou à domicile.',
  prix: 500,
).image.attach(
  io: URI.open("https://res.cloudinary.com/dnojcwwos/image/upload/v1734522732/Doulanouk/enbe1wbwtlheqt6pwwkd.jpg"),
  filename: 'enbe1wbwtlheqt6pwwkd.jpg',
  content_type: 'image/jpg'
)

require 'open-uri'

Prestation.create!(
  titre: 'Suivi postnatal à domicile',
  description: 'Visites à domicile après la naissance pour soutenir la mère et le bébé. Conseils en allaitement, gestion de la fatigue, et ajustement à la parentalité.',
  prix: 250
).image.attach(
  io: URI.open("https://res.cloudinary.com/dnojcwwos/image/upload/v1734522734/Doulanouk/p0y4jkk2dqse0rmduqvp.jpg"),
  filename: 'p0y4jkk2dqse0rmduqvp.jpg',
  content_type: 'image/jpg'
)

Prestation.create!(
  titre: 'Séance de massage prénatal',
  description: 'Massage thérapeutique pour soulager les douleurs liées à la grossesse, favoriser la détente et améliorer la circulation sanguine.',
  prix: 80,
  image: Rails.root.join('app', 'assets', 'images', 'massage.png').open
).image.attach(
  io: URI.open("https://res.cloudinary.com/dnojcwwos/image/upload/v1734522733/Doulanouk/erzoraosrj9kpm8jgmyg.png"),
  filename: 'erzoraosrj9kpm8jgmyg.png',
  content_type: 'image/jpg'
)

puts "5 prestations de doula créées avec succès !"
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
