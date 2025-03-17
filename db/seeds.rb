require 'open-uri'

Prestation.destroy_all

prestations = [
  {
    titre: 'A la carte',
    description:
                 "<p>1 rendez-vous d’1h30 : Cela vous permet d’adapter votre accompagnement, nous pouvons nous voir seulement 1 fois ou plus, c’est en fonction de vos besoins. Et cela à toutes les étapes qui entourent votre maternité/parentalité.</p>",
    prix: 68,
    image_url: "https://res.cloudinary.com/dnojcwwos/image/upload/v1734522732/Doulanouk/fr2bapbiowe8ovo6htnt.jpg"
  },
  {
    titre: 'Pack “Un peu de tout” - 6 rdv',
    description: "
                  <p>3 rendez-vous à positionner avant l’accouchement & 3 rendez-vous à positionner après l’accouchement </p>
                  ",
    prix: 387,
    image_url: "https://res.cloudinary.com/dnojcwwos/image/upload/v1734522733/Doulanouk/erzoraosrj9kpm8jgmyg.png"
  },
  {
    titre: 'Pack “Baby loading” - 6 rdv',
    description: "<p>6 rendez-vous à positionner comme vous le souhaitez entre le début de votre projet bébé et votre accouchement.</p>
                  <p>Ces rendez-vous ont pour objectif de vous accompagner dans votre désir d’enfant : où en êtes-vous, si vous rencontrez des obstacles, si vous avez besoin de soutien dans votre parcours PMA, ou encore un espace d’échange pour vous et votre conjoint.e.</p>
                  <p>Pendant la période de la grossesse, ces rendez-vous peuvent vous servir à : parler de vos ressentis actuels, vos besoins pendant votre grossesse, votre vision de l’accouchement, vos doutes, parler du post-partum, vous accompagner logistiquement sur la préparation du post-partum, vous accompagner sur des démarches administratives, créer un espace d’échanges pour vous et votre conjoint.e, etc.</p>
                  <p><strong>1 soin offert</strong></p>
                  <p><em>*Si vous souhaitez adapter ce pack en ajoutant des rendez-vous à la fin de votre accompagnement, nous pourrons adapter le tarif.</em></p>",
    prix: 408,
    image_url: "https://res.cloudinary.com/dnojcwwos/image/upload/v1734522732/Doulanouk/enbe1wbwtlheqt6pwwkd.jpg"
  },
  {
    titre: 'Pack "Mois d\'or & +"',
    description: "<p>8 rendez-vous à positionner à la suite de votre accouchement (vous choisissez la récurrence), afin de vous accompagner lors de votre retour à la maison, votre adaptation à cette nouvelle vie et instaurer avec vous un climat de bien-être pour essayer de vous faire vivre un “mois d’or”.</p>
                  <p>Je peux être là pour vous soutenir lors de la reprise du travail de votre conjoint.e et vous aider avec la logistique de la maison par exemple. Et nous pouvons aussi seulement prendre le temps de parler de cette nouvelle vie, ce que vous traversez, parler de votre accouchement et des interrogations que vous avez.</p>
                  <p><strong>1 soin offert</strong></p>
                  <p><em>*Si vous souhaitez adapter ce pack en ajoutant des rendez-vous à la fin de votre accompagnement, nous pourrons adapter le tarif.</em></p>",
    prix: 544,
    image_url: "https://res.cloudinary.com/dnojcwwos/image/upload/v1734522734/Doulanouk/p0y4jkk2dqse0rmduqvp.jpg"
  }
]

prestations.each do |data|
  prestation = Prestation.create!(
    titre: data[:titre],
    description: data[:description],
    prix: data[:prix]
  )

  prestation.image.attach(
    io: URI.open(data[:image_url]),
    filename: File.basename(URI.parse(data[:image_url]).path),
    content_type: 'image/jpg'
  )
end

puts "Prestations de doula créées avec succès !"
