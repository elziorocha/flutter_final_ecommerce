import 'package:flutter/material.dart';
import 'package:flutter_final/Models/produtos_modelo.dart';
import 'package:flutter_final/telas/Home/Widget/barra_pesquisa.dart';
import 'package:flutter_final/telas/Home/Widget/card_produtos.dart';
import 'package:flutter_final/telas/Home/Widget/categorias.dart';
import 'package:flutter_final/telas/Home/Widget/home_appbar.dart';
import 'package:flutter_final/telas/Home/Widget/slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 35,
              ),
              const CustomAppBar(),
              const SizedBox(
                height: 20,
              ),
              const BarraPesquisa(),
              const SizedBox(
                height: 20,
              ),
              SliderHome(
                currentSlide: currentSlider,
                onChange: (value) {
                  setState(
                    () {
                      currentSlider = value;
                    },
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Categorias(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Apenas para você",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "Ver Tudo",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.78,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: produtoModelos.length,
                itemBuilder: (context, index) {
                  return CardProdutos(
                    produto: produtoModelos[index],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
