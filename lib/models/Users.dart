class User {
  final String name, cognome, image, mail;

  User({
    required this.name,
    required this.cognome,
    required this.image,
    required this.mail,
  });
}

List<User> usersData = [
  User(
    name: "The Mode",
    cognome: "Via Giuseppe Verdi 10, 20025 Legnano MI",
    image: "assets/images/themodev2.png",
    mail: "prova@gmail.com",
  ),
];
