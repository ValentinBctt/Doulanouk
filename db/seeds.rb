require 'open-uri'

# Suppression des données existantes
Prestation.destroy_all
Soin.destroy_all
Accompagnement.destroy_all

# Helper pour attacher une image
def attach_image(record, image_path_string)
  image_path = Rails.root.join(image_path_string)

  if File.exist?(image_path)
    record.image.attach(
      io: File.open(image_path),
      filename: File.basename(image_path),
      content_type: 'image/jpeg'
    )
  else
    puts "⚠️ Image introuvable : #{image_path}"
  end
  sleep(0.2)
end

# === Prestations ===

prestations = [
  {
    titre: 'A la carte',
    description: "<p>1 rendez-vous d’1h30 : Cela vous permet d’adapter votre accompagnement, nous pouvons nous voir seulement 1 fois ou plus, c’est en fonction de vos besoins. Et cela à toutes les étapes qui entourent votre maternité/parentalité.</p>",
    prix: 68,
    image_url: "app/assets/images/A_la_carte.jpg"
  },
  {
    titre: 'Pack “Un peu de tout” - 6 rdv',
    description: "<p>3 rendez-vous à positionner avant l’accouchement & 3 rendez-vous à positionner après l’accouchement </p>",
    prix: 387,
    image_url: "app/assets/images/Pack_un_peu_de_tout.jpg"
  },
  {
    titre: 'Pack “Baby loading” - 6 rdv',
    description: "<p>6 rendez-vous à positionner comme vous le souhaitez entre le début de votre projet bébé et votre accouchement.</p>
    <p>Ces rendez-vous ont pour objectif de vous accompagner dans votre désir d’enfant : où en êtes-vous, si vous rencontrez des obstacles, si vous avez besoin de soutien dans votre parcours PMA, ou encore un espace d’échange pour vous et votre conjoint.e.</p>
    <p>Pendant la période de la grossesse, ces rendez-vous peuvent vous servir à : parler de vos ressentis actuels, vos besoins pendant votre grossesse, votre vision de l’accouchement, vos doutes, parler du post-partum, vous accompagner logistiquement sur la préparation du post-partum, vous accompagner sur des démarches administratives, créer un espace d’échanges pour vous et votre conjoint.e, etc.</p>
    <p><strong>1 soin offert</strong></p>
    <p><em>*Si vous souhaitez adapter ce pack en ajoutant des rendez-vous à la fin de votre accompagnement, nous pourrons adapter le tarif.</em></p>",
    prix: 408,
    image_url: "app/assets/images/Et_vous.jpg"
  },
  {
    titre: 'Pack "Mois d\'or & +"',
    description: '<p>8 rendez-vous à positionner à la suite de votre accouchement (vous choisissez la récurrence), afin de vous accompagner lors de votre retour à la maison, votre adaptation à cette nouvelle vie et instaurer avec vous un climat de bien-être pour essayer de vous faire vivre un “mois d’or”.</p>',
    prix: 544,
    image_url: "app/assets/images/Pack_mois_dor.jpg"
  }
]

prestations.each do |data|
  prestation = Prestation.create!(
    titre: data[:titre],
    description: data[:description],
    prix: data[:prix]
  )
  attach_image(prestation, data[:image_url])
  sleep(0.2)
end

puts "✅ Prestations créées avec succès"

# === Soins ===

soins = [
  {
    titre: '💆Massage post-natal ',
    description: "<p>Pour qui, pour quoi ?
Chaque post-partum est différent, il peut être doux ou bien plus abrupt. C’est une période chargée en émotions et adaptations.
Tu vis certainement un chamboulement, un changement parce que le post-partum c’est un renouveau, une découverte.
Félicite ton corps et ton esprit pour ce que tu viens de vivre et ce que tu es en train d’accomplir.
Pour accompagner ce moment, fais-toi offrir ou offre-toi (tu le mérites !) un moment d’apaisement.
Ce soin vient t’apporter une bulle, un instant suspendu de bien-être et relaxation. Ce massage peut te permettre par exemple de :
- Soulager les tensions musculaires
- Améliorer le sommeil
- Aider à rééquilibrer les hormones

Comment ?
Le soin comprend :

- Massage et détente du dos
- Réflexologie palmaire et massage des bras
- Bercements rebozo 1 zone

Si ton bébé est avec nous, pas de souci on peut adapter le soin : allaitement, bébé à proximité etc.
N’hésite pas à m’en parler en amont pour qu’on rende ce moment adapté à tes besoins.
Ce soin est aussi adapté pour toute personne traversant une étape, un passage difficile et qui souhaiterait bénéficier d’un moment de douceur.</p>",
    prix: "<p>1h : 70€</p>",
    image_url: "app/assets/images/massage.jpg"
  },
  {
    titre: '🌺 Soin de Bien-être  –  Rebozo',
    description: "<p>Pour qui, pour quoi ?
Ce soin d’environ 1h est une invitation à revenir à soi, à ralentir, à se déposer.
Le rebozo est un tissu traditionnel mexicain, tissé à la main, utilisé depuis des générations pour soutenir, envelopper et célébrer les femmes à différentes étapes de leur vie.
Il est particulièrement apprécié et adapté :
- aux jeunes mamans, pour marquer une pause dans l’intensité du post-partum.
Mais aussi :
– aux femmes en transition, qui traversent un changement, un deuil, une transformation intérieure
– à toute femme qui ressent le besoin d’un soin profondément enveloppant et symbolique

Comment ?
À l’aide de 6 à 7 rebozos, j’effectue d’abord différents bercements sur chaque zone du corps et je finis par un resserrage de ces zones  : tête, épaules, ventre, bassin, jambes, pieds…
Chaque zone est invitée à se détendre, à se relâcher… puis à se rassembler.</p>",
    prix: "70 €",
    image_url: "app/assets/images/Rebozo.jpg"
  }
]

soins.each do |data|
  soin = Soin.create!(
    titre: data[:titre],
    description: data[:description],
    prix: data[:prix]
  )
  attach_image(soin, data[:image_url])
  sleep(0.2)
end

puts "✅ Soins créés avec succès"

# === Accompagnements ===

accompagnements = [
  {
    titre: '✨ Atelier Découverte – Portage Physiologique',
    description: "<p>Pour qui ? Futures mamans, jeunes parents, en solo, en duo etc.
Quand ? Dès la grossesse ou après la naissance.
Durée : 1h30 à 2h

Contenu :
- Présentation des différents moyens de portage (jersey, tissé, meï-taï, sling)
- Démonstration des règles de sécurité et de la physiologie du portage
- Avantages et inconvénients
- Essai pratique sur poupon lesté ou avec votre bébé
- Conseils personnalisés selon vos besoins et envies

À l’issue de la séance, je vous envoie un mémo récapitulatif des points abordés, incluant les techniques de nouage pour les différentes écharpes.</p>",
    prix: 65,
    image_url: "app/assets/images/Portage_1.jpg"
  },
  {
    titre: "🌱 Atelier Accompagnement – Ajustement du Portage",
    description: "<p>Pour qui ? Parents ayant déjà un moyen de portage et rencontrant des difficultés (inconfort, mauvaise position, bébé qui grandit, etc.).
Quand ? Après la naissance, à tout moment selon vos besoins.
Durée : 1h à 1h30

Contenu :
- Analyse de votre pratique actuelle
- Ajustement du portage en fonction de votre morphologie et de celle de votre bébé
- Apprentissage de nouveaux nouages, positions si besoin (ventrale, dorsale, hanche)
- Présentation d’autres types de portage si besoin

À l’issue de la séance, je vous envoie un mémo récapitulatif des points abordés, incluant les techniques de nouage pour les différentes écharpes.</p>",
    prix: 65,
    image_url: "app/assets/images/Portage_2.jpg"
  }
]

accompagnements.each do |data|
  accompagnement = Accompagnement.create!(
    titre: data[:titre],
    description: data[:description],
    prix: data[:prix]
  )
  attach_image(accompagnement, data[:image_url])
  sleep(0.2)
end

puts "✅ Accompagnements créés avec succès"
