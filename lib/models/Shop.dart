class Shop {
  final String name, via, image, description, telefono, postitot;

  Shop({
    required this.name,
    required this.via,
    required this.image,
    required this.description,
    required this.postitot,
    required this.telefono,
  });
}

List<Shop> shopsData = [
  Shop(
    name: "The Mode",
    via: "Via Giuseppe Verdi 10, 20025 Legnano MI",
    image: "assets/images/themodev2.png",
    description:
        "ciao siamo un locale molto in e vogliamo fare tutto per i giovani. ci sono un sacco di tavoli fuori e posti a sedere. situato al centro le parco bernocchi con ampio posto auto",
    telefono: "3448929442",
    postitot: "150",
  ),
  Shop(
    name: "Terrazza Yucca",
    via: "Piazza Fratelli Rosselli 10, 21052 Busto Arsizio VA",
    image: "assets/images/terrazzayucca.png",
    description:
        "ciao siamo un locale molto in e vogliamo fare tutto per i giovani. ci sono un sacco di tavoli fuori e posti a sedere. situato al centro le parco bernocchi con ampio posto auto",
    telefono: "3448922442",
    postitot: "200",
  ),
  Shop(
    name: "L'Antico Teatro",
    via: "Corso Italia 15, 20025 Legnano MI",
    image: "assets/images/anticoteatro.png",
    description:
        "ciao siamo un locale molto in e vogliamo fare tutto per i giovani. ci sono un sacco di tavoli fuori e posti a sedere. situato al centro le parco bernocchi con ampio posto auto",
    telefono: "344878442",
    postitot: "300",
  ),
  Shop(
    name: "Ritual Club Shisha Lounge",
    via: "Corso Sempione, 11, 21053 Castellanza VA",
    image: "assets/images/ritual.png",
    description:
        "ciao siamo un locale molto in e vogliamo fare tutto per i giovani. ci sono un sacco di tavoli fuori e posti a sedere. situato al centro le parco bernocchi con ampio posto auto",
    telefono: "+393297331531",
    postitot: "300",
  ),
];
