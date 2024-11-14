import 'package:flutter/material.dart';
import 'package:flutter_final/Models/produtos_modelo.dart';
import 'package:flutter_final/Provider/favorito_provider.dart';
import 'package:flutter_final/constants.dart';

class AppbarDetalhes extends StatelessWidget {
  final ProdutoModelo produto;

  const AppbarDetalhes({super.key, required this.produto});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          const Spacer(),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {},
            icon: const Icon(Icons.share_outlined),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {
              provider.toggleFavorite(produto);
            },
            icon: Icon(
              provider.isExist(produto)
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: apprimaryColor,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
