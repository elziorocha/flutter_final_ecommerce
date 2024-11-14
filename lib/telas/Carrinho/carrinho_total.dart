import 'package:flutter/material.dart';
import 'package:flutter_final/Provider/carrinho_provider.dart';
import 'package:flutter_final/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const request = "https://api.hgbrasil.com/finance?format=json-cors&key=8c463d9d";

class CarrinhoTotal extends StatefulWidget {
  const CarrinhoTotal({super.key});

  @override
  _CarrinhoTotalState createState() => _CarrinhoTotalState();
}

class _CarrinhoTotalState extends State<CarrinhoTotal> {
  String selectedCurrency = "BRL";
  double dolar = 0.0;
  double euro = 0.0;
  double totalInSelectedCurrency = 0.0;

  @override
  void initState() {
    super.initState();
    _fetchCurrencyRates();
  }

  Future<void> _fetchCurrencyRates() async {
    try {
      final response = await http.get(Uri.parse(request));
      final data = json.decode(response.body);
      setState(() {
        dolar = data["results"]["currencies"]["USD"]["buy"];
        euro = data["results"]["currencies"]["EUR"]["buy"];
      });
    } catch (e) {
      print("Erro ao buscar taxas de câmbio: $e");
    }
  }

  double _convertTotal(double total) {
    switch (selectedCurrency) {
      case "USD":
        return total / dolar;
      case "EUR":
        return total / euro;
      default:
        return total + (total / 5);
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = CarrinhoProvider.of(context);
    double total = provider.precoTotal();
    totalInSelectedCurrency = _convertTotal(total);

    return Container(
      height: 300,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
              ),
              filled: true,
              fillColor: contentColor,
              hintText: "Insira um Cupom...",
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
              suffixIcon: TextButton(
                onPressed: () {},
                child: Text(
                  "Aplicar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: apprimaryColor,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Total do Carrinho:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              Row(
                children: [
                  Text(
                    "${selectedCurrency == 'BRL' ? 'R\$' : selectedCurrency == 'USD' ? '\$' : '€'}${totalInSelectedCurrency.toStringAsFixed(2)}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 10),
                  DropdownButton<String>(
                    value: selectedCurrency,
                    items: const [
                      DropdownMenuItem(
                        value: "BRL",
                        child: Text("Real"),
                      ),
                      DropdownMenuItem(
                        value: "USD",
                        child: Text("Dólar"),
                      ),
                      DropdownMenuItem(
                        value: "EUR",
                        child: Text("Euro"),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedCurrency = value!;
                        totalInSelectedCurrency = _convertTotal(total);
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Total",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                "${selectedCurrency == 'BRL' ? 'R\$' : selectedCurrency == 'USD' ? '\$' : '€'}${totalInSelectedCurrency.toStringAsFixed(2)}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: apprimaryColor,
              minimumSize: const Size(double.infinity, 55),
            ),
            onPressed: () {},
            child: const Text(
              "Finalizar Compra",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
