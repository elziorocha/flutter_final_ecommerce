class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> itemcategorias = [
  Category(
    title: "Tudo",
    image: "images/tudo.jpg",
  ),
    Category(
    title: "Moda\nFeminina",
    image: "images/modafeminina.jpg",
  ),
    Category(
    title: "Moda\nMasculina",
    image: "images/modamasculina.jpg",
  ),
  Category(
    title: "Tênis",
    image: "images/tenis.png",
  ),
  Category(
    title: "Maquiagem",
    image: "images/maquiagem.png",
  ),
  Category(
    title: "Joalheria",
    image: "images/joias.jpg",
  ),
];
