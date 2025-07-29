# Suppression des données existantes
Prestation.destroy_all
Soin.destroy_all
Accompagnement.destroy_all

# === Prestations ===

prestations = [
  {
    titre: 'A la carte',
    description: "<p>1 rendez-vous d’1h30 : Cela vous permet d’adapter votre accompagnement, nous pouvons nous voir seulement 1 fois ou plus, c’est en fonction de vos besoins. Et cela à toutes les étapes qui entourent votre maternité/parentalité.</p>",
    prix: 68,
    image_url: "https://res.cloudinary.com/dnojcwwos/image/upload/v1753793649/A_la_carte_pqpoe3.jpg"
  },
  {
    titre: 'Pack “Un peu de tout” - 6 rdv',
    description: "<p>3 rendez-vous à positionner avant l’accouchement & 3 rendez-vous à positionner après l’accouchement </p>",
    prix: 387,
    image_url: "https://res.cloudinary.com/dnojcwwos/image/upload/v1753793644/Pack_un_peu_de_tout_vhvds2.jpg"
  },
  {
    titre: 'Pack “Baby loading” - 6 rdv',
    description: "<p>6 rendez-vous à positionner comme vous le souhaitez entre le début de votre projet bébé et votre accouchement.</p>\n<p>Ces rendez-vous ont pour objectif de vous accompagner dans votre désir d’enfant : où en êtes-vous, si vous rencontrez des obstacles, si vous avez besoin de soutien dans votre parcours PMA, ou encore un espace d’échange pour vous et votre conjoint.e.</p>\n<p>Pendant la période de la grossesse, ces rendez-vous peuvent vous servir à : parler de vos ressentis actuels, vos besoins pendant votre grossesse, votre vision de l’accouchement, vos doutes, parler du post-partum, vous accompagner logistiquement sur la préparation du post-partum, vous accompagner sur des démarches administratives, créer un espace d’échanges pour vous et votre conjoint.e, etc.</p>\n<p><strong>1 soin offert</strong></p>\n<p><em>*Si vous souhaitez adapter ce pack en ajoutant des rendez-vous à la fin de votre accompagnement, nous pourrons adapter le tarif.</em></p>",
    prix: 408,
    image_url: "https://res.cloudinary.com/dnojcwwos/image/upload/v1753793640/Et_vous_gotakf.jpg"
  },
  {
    titre: 'Pack "Mois d\'or & +"',
    description: '<p>8 rendez-vous à positionner à la suite de votre accouchement (vous choisissez la récurrence), afin de vous accompagner lors de votre retour à la maison, votre adaptation à cette nouvelle vie et instaurer avec vous un climat de bien-être pour essayer de vous faire vivre un “mois d’or”.</p>',
    prix: 544,
    image_url: "https://res.cloudinary.com/dnojcwwos/image/upload/v1753793643/Pack_mois_dor_sy3kfe.jpg"
  }
]

prestations.each do |data|
  Prestation.create!(data)
end

puts "✅ Prestations créées avec succès"

# === Soins ===

soins = [
  {
    titre: '💆Massage post-natal ',
    description: "<p>Pour qui, pour quoi ?\nChaque post-partum est différent, il peut être doux ou bien plus abrupt. C’est une période chargée en émotions et adaptations.\nTu vis certainement un chamboulement, un changement parce que le post-partum c’est un renouveau, une découverte.\nFélicite ton corps et ton esprit pour ce que tu viens de vivre et ce que tu es en train d’accomplir.\nPour accompagner ce moment, fais-toi offrir ou offre-toi (tu le mérites !) un moment d’apaisement.\nCe soin vient t’apporter une bulle, un instant suspendu de bien-être et relaxation. Ce massage peut te permettre par exemple de :\n- Soulager les tensions musculaires\n- Améliorer le sommeil\n- Aider à rééquilibrer les hormones\n\nComment ?\nLe soin comprend :\n\n- Massage et détente du dos\n- Réflexologie palmaire et massage des bras\n- Bercements rebozo 1 zone\n\nSi ton bébé est avec nous, pas de souci on peut adapter le soin : allaitement, bébé à proximité etc.\nN’hésite pas à m’en parler en amont pour qu’on rende ce moment adapté à tes besoins.\nCe soin est aussi adapté pour toute personne traversant une étape, un passage difficile et qui souhaiterait bénéficier d’un moment de douceur.</p>",
    prix: "<p>1h : 70€</p>",
    image_url: "https://res.cloudinary.com/dnojcwwos/image/upload/v1753793642/massage_eyi1zu.jpg"
  },
  {
    titre: '🌺 Soin de Bien-être  –  Rebozo',
    description: "<p>Pour qui, pour quoi ?\nCe soin d’environ 1h est une invitation à revenir à soi, à ralentir, à se déposer.\nLe rebozo est un tissu traditionnel mexicain, tissé à la main, utilisé depuis des générations pour soutenir, envelopper et célébrer les femmes à différentes étapes de leur vie.\nIl est particulièrement apprécié et adapté :\n- aux jeunes mamans, pour marquer une pause dans l’intensité du post-partum.\nMais aussi :\n– aux femmes en transition, qui traversent un changement, un deuil, une transformation intérieure\n– à toute femme qui ressent le besoin d’un soin profondément enveloppant et symbolique\n\nComment ?\nÀ l’aide de 6 à 7 rebozos, j’effectue d’abord différents bercements sur chaque zone du corps et je finis par un resserrage de ces zones  : tête, épaules, ventre, bassin, jambes, pieds…\nChaque zone est invitée à se détendre, à se relâcher… puis à se rassembler.</p>",
    prix: "70 €",
    image_url: "https://res.cloudinary.com/dnojcwwos/image/upload/v1753793644/Pack_un_peu_de_tout_vhvds2.jpg"
  }
]

soins.each do |data|
  Soin.create!(data)
end

puts "✅ Soins créés avec succès"

# === Accompagnements ===

accompagnements = [
  {
    titre: '✨ Atelier Découverte – Portage Physiologique',
    description: "<p>Pour qui ? Futures mamans, jeunes parents, en solo, en duo etc.\nQuand ? Dès la grossesse ou après la naissance.\nDurée : 1h30 à 2h\n\nContenu :\n- Présentation des différents moyens de portage (jersey, tissé, meï-taï, sling)\n- Démonstration des règles de sécurité et de la physiologie du portage\n- Avantages et inconvénients\n- Essai pratique sur poupon lesté ou avec votre bébé\n- Conseils personnalisés selon vos besoins et envies\n\nÀ l’issue de la séance, je vous envoie un mémo récapitulatif des points abordés, incluant les techniques de nouage pour les différentes écharpes.</p>",
    prix: 65,
    image_url: "https://res.cloudinary.com/dnojcwwos/image/upload/v1753793645/Portage_1_f7hbv0.jpg"
  },
  {
    titre: "🌱 Atelier Accompagnement – Ajustement du Portage",
    description: "<p>Pour qui ? Parents ayant déjà un moyen de portage et rencontrant des difficultés (inconfort, mauvaise position, bébé qui grandit, etc.).\nQuand ? Après la naissance, à tout moment selon vos besoins.\nDurée : 1h à 1h30\n\nContenu :\n- Analyse de votre pratique actuelle\n- Ajustement du portage en fonction de votre morphologie et de celle de votre bébé\n- Apprentissage de nouveaux nouages, positions si besoin (ventrale, dorsale, hanche)\n- Présentation d’autres types de portage si besoin\n\nÀ l’issue de la séance, je vous envoie un mémo récapitulatif des points abordés, incluant les techniques de nouage pour les différentes écharpes.</p>",
    prix: 65,
    image_url: "https://res.cloudinary.com/dnojcwwos/image/upload/v1753793646/Portage_2_ywjpmy.jpg"
  }
]

accompagnements.each do |data|
  Accompagnement.create!(data)
end

puts "✅ Accompagnements créés avec succès"
