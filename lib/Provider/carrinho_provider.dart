import 'package:flutter/widgets.dart';
import 'package:flutter_final/Models/produtos_modelo.dart';
import 'package:provider/provider.dart';

class CarrinhoProvider extends ChangeNotifier {
  final List<ProdutoModelo> _carrinho = [];
  List<ProdutoModelo> get carrinho => _carrinho;

  void toggleFavorite(ProdutoModelo produto) {
    if (_carrinho.contains(produto)) {
      int index = _carrinho.indexOf(produto);
      _carrinho[index].quantidade++;
    } else {
      produto.quantidade = 1;
      _carrinho.add(produto);
    }
    notifyListeners();
  }

  void incrementQnt(int index) {
    _carrinho[index].quantidade++;
    notifyListeners();
  }

  void decrementQnt(int index) {
    if (_carrinho[index].quantidade > 1) {
      _carrinho[index].quantidade--;
      notifyListeners();
    }
  }

  double precoTotal() {
    double total = 0.0;
    for (ProdutoModelo element in _carrinho) {
      total += element.preco * element.quantidade;
    }
    return total;
  }

  static CarrinhoProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<CarrinhoProvider>(
      context,
      listen: listen,
    );
  }
}
