import 'package:flutter/material.dart';
import 'package:flutter_final/Models/produtos_modelo.dart';
import 'package:provider/provider.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<ProdutoModelo> _favorite = [];
  List<ProdutoModelo> get favorites => _favorite;
  void toggleFavorite(ProdutoModelo product) {
    if (_favorite.contains(product)) {
      _favorite.remove(product);
    } else {
      _favorite.add(product);
    }
    notifyListeners();
  }

  bool isExist(ProdutoModelo product) {
    final isExist = _favorite.contains(product);
    return isExist;
  }

  static FavoriteProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<FavoriteProvider>(
      context,
      listen: listen,
    );
  }
}