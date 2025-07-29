// app/javascript/components/DoulaPresentation.js

import React from "react";

// Hook personnalisé pour gérer l'intersection observer
const useIntersectionObserver = () => {
  const [isVisible, setIsVisible] = React.useState(false);
  const ref = React.useRef();

  React.useEffect(() => {
    const observer = new IntersectionObserver(
      ([entry]) => {
        if (entry.isIntersecting) {
          setIsVisible(true);
          // Une fois visible, on arrête d'observer
          observer.unobserve(entry.target);
        }
      },
      {
        threshold: 0.1, // Déclenche quand 10% de l'élément est visible
        rootMargin: "0px 0px -50px 0px", // Déclenche un peu avant que l'élément soit complètement visible
      }
    );

    if (ref.current) {
      observer.observe(ref.current);
    }

    return () => {
      if (ref.current) {
        observer.unobserve(ref.current);
      }
    };
  }, []);

  return [ref, isVisible];
};

const DoulaPresentation = () => {
  return React.createElement(
    "div",
    { className: "consult" },
    React.createElement("img", {
      src: "https://res.cloudinary.com/dnojcwwos/image/upload/v1753793641/home_of9dsv.jpg",
      alt: "Consult",
      className: "img-home",
    })
  );
};

const DoulaInfo = () => {
  const [ref, isVisible] = useIntersectionObserver();

  return React.createElement(
    "div",
    {
      className: `card-doula ${isVisible ? "fade-in-up" : "fade-out"}`,
      ref: ref,
    },
    React.createElement("h1", null, "Une Doula, c'est quoi ?"),
    React.createElement(
      "p",
      null,
      `Le mot Doula vient du grec ancien "au service de" ou "servante".
Des siècles auparavant, le rôle de la Doula était déjà d'être une femme au service d'autres femmes durant l'accouchement et la période post-natale. À l'époque, ce sont des figures féminines de la communauté qui remplissaient ce rôle.
Aujourd'hui, une Doula est une professionnelle formée dont le but reste d'être au service de la femme, mais également du co-parent pendant l'ensemble des périodes qui entourent la natalité (pré-natal, accouchement, post-partum).
Notre rôle est de fournir un soutien émotionnel, physique et informatif, en créant un environnement de confiance et de bien-être.
Sans intervenir médicalement, nous vous aidons à vivre votre expérience de la naissance et de la parentalité de manière sereine et épanouie, en respectant vos choix et en vous soutenant dans votre parcours.`
    )
  );
};

const DoulaPresentation2 = () => {
  return React.createElement(
    "div",
    { className: "consult" },
    React.createElement("img", {
      src: "https://res.cloudinary.com/dnojcwwos/image/upload/v1753793639/anouk_1_kg1qno.jpg",
      alt: "Consult",
      className: "img-home",
    })
  );
};


const QuiSuisJe = () => {
  const [ref, isVisible] = useIntersectionObserver();

  return React.createElement(
    "div",
    {
      className: `card-doula ${isVisible ? "fade-in-up" : "fade-out"}`,
      ref: ref,
    },
    React.createElement("h1", null, "Qui suis-je ?"),
    React.createElement(
      "p",
      null,
      "Je suis Anouk, accompagnante périnatale ou bien Doula. " +
        "Je viens initialement d'autres horizons puisque j'ai d'abord exercé dans les Ressources Humaines. " +
        "J'ai souhaité évoluer vers un autre métier d'accompagnement, plus créatif et plus à l'écoute des souhaits de chacun. " +
        "Ayant toujours eu un attrait pour la maternité, ses étapes, ses épreuves, ses joies, ses questionnements, le métier de Doula a été une évidence pour moi. " +
        "Mon rôle est d'être une alliée dans cette expérience et un soutien dans vos choix. " +
        "Je vous aide à être à l'écoute de vos questionnements et de vos besoins afin que vous puissiez au mieux les respecter. " +
        "Pour enrichir cet accompagnement et répondre aux besoins variés de cette période unique, j'ai choisi de proposer également des soins complémentaires tels que : " +
        "Massage postnatal, Soin Rebozo, Atelier de portage physiologique. " +
        "Ces moments de douceur et de bienveillance viennent soutenir le corps, l'esprit et le lien que vous êtes en train de construire, dans une approche plus globale."
    )
  );
};

const CeQueJeFais = () => {
  const [ref, isVisible] = useIntersectionObserver();
  const [isExpanded, setIsExpanded] = React.useState(false);

  const toggleVisibility = () => {
    setIsExpanded((prev) => !prev);
  };

  const ulElement = React.createElement(
    "ul",
    { style: { listStyleType: "disc", paddingLeft: "20px" } },
    React.createElement("li", null, "Je vous écoute dans la neutralité."),
    React.createElement(
      "li",
      null,
      "J'accueille votre histoire, vos ressentis, vos questions, vos doutes, vos envies."
    ),
    React.createElement(
      "li",
      null,
      "Je vous aide à identifier vos besoins et à les mettre en œuvre."
    ),
    React.createElement("li", null, "Je vous informe."),
    React.createElement("li", null, "Je vous propose des ressources."),
    React.createElement(
      "li",
      null,
      "Je vous soutiens et vous donne confiance en vous."
    ),
    React.createElement(
      "li",
      null,
      "Je vous indique lorsqu'il y a des sujets hors de mon champ de compétences."
    ),
    React.createElement(
      "li",
      null,
      "Je peux vous accompagner dans certaines démarches et à certains rendez-vous."
    ),
    React.createElement(
      "li",
      null,
      "Je peux vous aider dans votre organisation/logistique ",
      "(aider à préparer la maison pour l'arrivée de votre bébé, aider à préparer/organiser sa chambre, vous aider sur les tâches ménagères en post-partum…)"
    )
  );

  const pElement = React.createElement(
    "p",
    { className: isExpanded ? "visible" : "" },
    ulElement
  );

  const h1Element = React.createElement(
    "h2",
    { className: "card-animate" },
    "Concrètement, qu'est-ce que je fais ? ",
    React.createElement("i", {
      className: isExpanded ? "" : "fleche fa-solid fa-chevron-down",
    })
  );

  return React.createElement(
    "div",
    {
      className: `presentation ${isVisible ? "fade-in-up" : "fade-out"}`,
      ref: ref,
      onClick: toggleVisibility,
      style: { cursor: "pointer" }
    },
    h1Element,
    pElement
  );
};

const EtVous = () => {
  const [ref, isVisible] = useIntersectionObserver();
  const [isExpanded, setIsExpanded] = React.useState(false);

  const toggleVisibility = () => {
    setIsExpanded((prev) => !prev);
  };

  const pElement = React.createElement(
    "p",
    { className: isExpanded ? "visible" : "" },
    "Vous avez un espace d'écoute où vous pouvez parler sans tabou, vous mettez des mots sur vos ressentis, vous extériorisez vos émotions, vous parlez de vos besoins et de ce qui est important pour vous. Vous êtes actrice/acteur de votre parentalité et vous lui donnez l'image que vous souhaitez."
  );

  const h1Element = React.createElement(
    "h2",
    { className: "card-animate" },
    "Et vous ?",
    React.createElement("i", {
      className: isExpanded ? "" : "fleche fa-solid fa-chevron-down",
    })
  );

  return React.createElement(
    "div",
    {
      className: `presentation ${isVisible ? "fade-in-up" : "fade-out"}`,
      ref: ref,
      onClick: toggleVisibility,
      style: { cursor: "pointer" }
    },
    h1Element,
    pElement
  );
};

const MonChamp = () => {
  const [ref, isVisible] = useIntersectionObserver();
  const [isExpanded, setIsExpanded] = React.useState(false);

  const toggleVisibility = () => {
    setIsExpanded((prev) => !prev);
  };

  const ulElement = React.createElement(
    "ul",
    { style: { listStyleType: "disc", paddingLeft: "20px" } },
    React.createElement("li", null, "Désir d'enfant"),
    React.createElement("li", null, "Grossesse"),
    React.createElement("li", null, "Post-Partum"),
    React.createElement("li", null, "Mois d'or"),
    React.createElement("li", null, "Retour au travail"),
    React.createElement("li", null, "Adoption")
  );

  const pElement = React.createElement(
    "p",
    { className: isExpanded ? "visible" : "" },
    ulElement,
    React.createElement("br"),
    "Je vous accompagne avec bienveillance et sans jugement, à chaque étape de votre parcours, quelle que soit votre histoire, votre situation, votre orientation sexuelle, votre genre ou votre culture.",
    React.createElement("br"),
    React.createElement("br"),
    "🚨 Une Doula ne remplace pas une Sage-Femme. Je ne suis pas médecin, ni sage-femme. Si vous souhaitez que je vous accompagne, vous devez obligatoirement être suivi au niveau médical. Je ne pourrai malheureusement pas vous accompagner si ce n'est pas le cas.🚨",
    React.createElement("br")
  );

  const h1Element = React.createElement(
    "h2",
    { className: "card-animate" },
    "Mon champ d'accompagnement",
    React.createElement("i", {
      className: isExpanded ? "" : "fleche fa-solid fa-chevron-down",
    })
  );

  return React.createElement(
    "div",
    {
      className: `presentation ${isVisible ? "fade-in-up" : "fade-out"}`,
      ref: ref,
      onClick: toggleVisibility,
      style: { cursor: "pointer" }
    },
    h1Element,
    pElement
  );
};

const MaLocalisation = () => {
  const [ref, isVisible] = useIntersectionObserver();
  const [isExpanded, setIsExpanded] = React.useState(false);

  const toggleVisibility = () => {
    setIsExpanded((prev) => !prev);
  };

  const pElement = React.createElement(
    "p",
    { className: isExpanded ? "visible" : "" },
    "Je me déplace à votre domicile ou dans un lieu extérieur de votre choix, notamment dans le sud des Yvelines, dans un rayon de 15km autour de la zone de Saint-Quentin en Yvelines.",
    React.createElement("br"),
    "Je me déplace aussi dans certaines communes de l'Essonne (91) et des Hauts-de-Seine (92).",
    React.createElement("br"),
    "Il est également tout à fait possible d'échanger par visio ponctuelle ou bien pour la totalité de vos rendez-vous, c'est vous qui décidez de la forme de votre accompagnement.",
    React.createElement("br"),
    React.createElement("br"),
    "N'hésitez pas à m'en parler directement pour que l'on puisse réfléchir ensemble et s'adapter à votre situation."
  );

  const h1Element = React.createElement(
    "h2",
    { className: "card-animate" },
    "Ma localisation",
    React.createElement("i", {
      className: isExpanded ? "" : "fleche fa-solid fa-chevron-down",
    })
  );

  return React.createElement(
    "div",
    {
      className: `presentation ${isVisible ? "fade-in-up" : "fade-out"}`,
      ref: ref,
      onClick: toggleVisibility,
      style: { cursor: "pointer" }
    },
    h1Element,
    pElement
  );
};

const DoulaPage = () => {
  return React.createElement(
    "div",
    null,
    React.createElement(DoulaPresentation),
    React.createElement(DoulaInfo),
    React.createElement(DoulaPresentation2),
    React.createElement(QuiSuisJe),
    React.createElement(CeQueJeFais),
    React.createElement(EtVous),
    React.createElement(MonChamp),
    React.createElement(MaLocalisation)
  );
};

export default DoulaPage;
