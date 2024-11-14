import 'package:flutter/material.dart';

class ProdutoModelo {
  final String titulo;
  final String descricao;
  final String image;
  final String review;
  final String vendedor;
  final double preco;
  final List<Color> colors;
  final String caregoria;
  final double avaliacao;
  int quantidade;

  ProdutoModelo(
      {required this.titulo,
      required this.review,
      required this.descricao,
      required this.image,
      required this.preco,
      required this.colors,
      required this.vendedor,
      required this.caregoria,
      required this.avaliacao,
      required this.quantidade});
}

final List<ProdutoModelo> produtoModelos = [
  ProdutoModelo(
    titulo: "Fone da Shoppee",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/all/wireless.png",
    preco: 120,
    vendedor: "Tariqul isalm",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    caregoria: "Eletrônicos",
    review: "(320 Reviews)",
    avaliacao: 4.8,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "Suéter Feminino",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/all/sweet.png",
    preco: 120,
    vendedor: "pampa Store",
    colors: [
      Colors.brown,
      Colors.deepPurple,
      Colors.pink,
    ],
    caregoria: "Moda Feminina",
    review: "(32 Reviews)",
    avaliacao: 4.5,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "Smart Watch",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/all/miband.jpg",
    preco: 55,
    vendedor: "Ram Das",
    colors: [
      Colors.black,
      Colors.amber,
      Colors.purple,
    ],
    caregoria: "Eletrônicos",
    review: "(20 Reviews)",
    avaliacao: 4.0,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "New Lolja Jacket",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/all/jacket.png",
    preco: 155,
    vendedor: "Loja de Jaquetas do guivs",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    caregoria: "Moda Masculina",
    review: "(20 Reviews)",
    avaliacao: 5.0,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "Relógio",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/menfashion/watch.png",
    preco: 1000,
    vendedor: "Loja de Jaquetas do guivs",
    colors: [
      Colors.lightBlue,
      Colors.orange,
      Colors.purple,
    ],
    caregoria: "Moda Masculina",
    review: "(100 Reviews)",
    avaliacao: 5.0,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "Air Jordan",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/sapatos/airjordan.png",
    preco: 255,
    vendedor: "The vendedor",
    colors: [
      Colors.grey,
      Colors.amber,
      Colors.purple,
    ],
    caregoria: "sapatos",
    review: "(55 Reviews)",
    avaliacao: 5.0,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "Super Perfume",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/beauty/perfume.png",
    preco: 155,
    vendedor: "Love vendedor",
    colors: [
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.green,
    ],
    caregoria: "Beleza",
    review: "(99 Reviews)",
    avaliacao: 4.7,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "Anel de Casamento",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/jewelry/weddingring.png",
    preco: 155,
    vendedor: "I Am vendedor",
    colors: [
      Colors.brown,
      Colors.purpleAccent,
      Colors.blueGrey,
    ],
    caregoria: "Jewelry",
    review: "(80 Reviews)",
    avaliacao: 4.5,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "Pants",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/womenfashion/pants.png",
    preco: 155,
    vendedor: "PK Store",
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    caregoria: "Moda Feminina",
    review: "(55 Reviews)",
    avaliacao: 5.0,
    quantidade: 1,
  ),
];

final List<ProdutoModelo> sapatos = [
  ProdutoModelo(
    titulo: "Air Jordan",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/sapatos/airjordan.png",
    preco: 255,
    vendedor: "The vendedor",
    colors: [
      Colors.grey,
      Colors.amber,
      Colors.purple,
    ],
    caregoria: "sapatos",
    review: "(55 Reviews)",
    avaliacao: 5.0,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "Vans Old Skool",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/sapatos/vans old skool.png",
    preco: 300,
    vendedor: "Mrs Store",
    colors: [
      Colors.blueAccent,
      Colors.blueGrey,
      Colors.green,
    ],
    caregoria: "sapatos",
    review: "(200 Reviews)",
    avaliacao: 5.0,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "sapatos pampa",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/sapatos/women-sapatos.png",
    preco: 500,
    vendedor: "sapatos Store",
    colors: [
      Colors.red,
      Colors.orange,
      Colors.greenAccent,
    ],
    caregoria: "sapatos",
    review: "(100 Reviews)",
    avaliacao: 4.8,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "Sports sapatos",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/sapatos/sports sapatos.png",
    preco: 155,
    vendedor: "Hari Store",
    colors: [
      Colors.deepPurpleAccent,
      Colors.orange,
      Colors.green,
    ],
    caregoria: "sapatos",
    review: "(60 Reviews)",
    avaliacao: 3.0,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "White Sneaker",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/sapatos/white sneaker.png",
    preco: 1000,
    vendedor: "Loja de Jaquetas do guivs",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    caregoria: "sapatos",
    review: "(00 Reviews)",
    avaliacao: 0.0,
    quantidade: 1,
  ),
];

final List<ProdutoModelo> beauty = [
  ProdutoModelo(
    titulo: "facecare ProdutoModelo",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/beauty/facecare.png",
    preco: 1500,
    vendedor: "Yojana vendedor",
    colors: [
      Colors.pink,
      Colors.amber,
      Colors.deepOrangeAccent,
    ],
    caregoria: "Beleza",
    review: "(200 Reviews)",
    avaliacao: 4.0,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "Super Perfume",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/beauty/perfume.png",
    preco: 155,
    vendedor: "Love vendedor",
    colors: [
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.green,
    ],
    caregoria: "Beleza",
    review: "(99 Reviews)",
    avaliacao: 4.7,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "Skin-Care ProdutoModelo",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/beauty/skin-care.png",
    preco: 999,
    vendedor: "Mr Beast",
    colors: [
      Colors.black12,
      Colors.orange,
      Colors.white38,
    ],
    caregoria: "Beleza",
    review: "(20 Reviews)",
    avaliacao: 4.2,
    quantidade: 1,
  ),
];

final List<ProdutoModelo> womenFashion = [
  ProdutoModelo(
    titulo: " Women Kurta",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/womenfashion/kurta.png",
    preco: 299,
    vendedor: "Sila Store",
    colors: [
      Colors.grey,
      Colors.black54,
      Colors.purple,
    ],
    caregoria: "Moda Feminina",
    review: "(25 Reviews)",
    avaliacao: 5.0,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "Mens Jacket",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/womenfashion/lehenga.png",
    preco: 666,
    vendedor: "My Store",
    colors: [
      Colors.black,
      Colors.orange,
      Colors.green,
    ],
    caregoria: "Moda Feminina",
    review: "(100 Reviews)",
    avaliacao: 4.0,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "T-Shert",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/womenfashion/t-shert.png",
    preco: 155,
    vendedor: "Love Store",
    colors: [
      Colors.blueAccent,
      Colors.redAccent,
      Colors.deepOrangeAccent,
    ],
    caregoria: "Eletrônicos",
    review: "(20 Reviews)",
    avaliacao: 5.0,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "  Pants",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/womenfashion/pants.png",
    preco: 155,
    vendedor: "PK Store",
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    caregoria: "Moda Feminina",
    review: "(55 Reviews)",
    avaliacao: 5.0,
    quantidade: 1,
  ),
];
final List<ProdutoModelo> jewelry = [
  ProdutoModelo(
    titulo: "Earrings",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/jewelry/earrings.png",
    preco: 3000,
    vendedor: "Gold Store",
    colors: [
      Colors.amber,
      Colors.deepPurple,
      Colors.pink,
    ],
    caregoria: "Jewelry",
    review: "(320 Reviews)",
    avaliacao: 4.5,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "Jewelry-Box",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/jewelry/jewelry-box.png",
    preco: 300,
    vendedor: "Love Love",
    colors: [
      Colors.pink,
      Colors.orange,
      Colors.redAccent,
    ],
    caregoria: "Jewelry",
    review: "(100 Reviews)",
    avaliacao: 5.0,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "Wedding Ring",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/jewelry/wedding ring.png",
    preco: 155,
    vendedor: "I Am vendedor",
    colors: [
      Colors.brown,
      Colors.purpleAccent,
      Colors.blueGrey,
    ],
    caregoria: "Jewelry",
    review: "(80 Reviews)",
    avaliacao: 4.5,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "Necklace-Jewellery",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/jewelry/necklace-jewellery.png",
    preco: 5000,
    vendedor: "Jewellery Store",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    caregoria: "Jewellery",
    review: "(22 Reviews)",
    avaliacao: 3.5,
    quantidade: 1,
  ),
];
final List<ProdutoModelo> menFashion = [
  ProdutoModelo(
    titulo: "Man Jacket",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/menfashion/manjacket.png",
    preco: 500,
    vendedor: "Men Store",
    colors: [
      Colors.brown,
      Colors.orange,
      Colors.blueGrey,
    ],
    caregoria: "Moda Masculina",
    review: "(90 Reviews)",
    avaliacao: 5.0,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "Men Pants",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/menfashion/pants.png",
    preco: 400,
    vendedor: "My Store",
    colors: [
      Colors.black54,
      Colors.orange,
      Colors.green,
    ],
    caregoria: "Moda Masculina",
    review: "(500 Reviews)",
    avaliacao: 4.5,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "Men Shert",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/menfashion/shert.png",
    preco: 300,
    vendedor: "Roman Store",
    colors: [
      Colors.pink,
      Colors.amber,
      Colors.green,
    ],
    caregoria: "menFashion",
    review: "(200 Reviews)",
    avaliacao: 3.0,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "T-Shirt",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/menfashion/t-shirt.png",
    preco: 200,
    vendedor: "Hot Store",
    colors: [
      Colors.brown,
      Colors.orange,
      Colors.blue,
    ],
    caregoria: "Moda Masculina",
    review: "(1k Reviews)",
    avaliacao: 5.0,
    quantidade: 1,
  ),
  ProdutoModelo(
    titulo: "Watch",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "../../images/menfashion/watch.png",
    preco: 1000,
    vendedor: "Loja de Jaquetas do guivs",
    colors: [
      Colors.lightBlue,
      Colors.orange,
      Colors.purple,
    ],
    caregoria: "Moda Masculina",
    review: "(100 Reviews)",
    avaliacao: 5.0,
    quantidade: 1,
  ),
];
