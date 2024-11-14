import 'package:flutter/material.dart';
import 'package:flutter_final/Models/produtos_modelo.dart';
import 'package:flutter_final/constants.dart';
import 'package:flutter_final/telas/Detalhes/Widget/adicionar_carrinho.dart';
import 'package:flutter_final/telas/Detalhes/Widget/appbar_detalhes.dart';
import 'package:flutter_final/telas/Detalhes/Widget/descricao.dart';
import 'package:flutter_final/telas/Detalhes/Widget/descricao_detalhes.dart';
import 'package:flutter_final/telas/Detalhes/Widget/slider_detalhes.dart';

class DetalhesProduto extends StatefulWidget {
  final ProdutoModelo produto;
  const DetalhesProduto({super.key, required this.produto});

  @override
  State<DetalhesProduto> createState() => _DetalhesProdutoState();
}

class _DetalhesProdutoState extends State<DetalhesProduto> {
  int currentImage = 0;
  int currentSlide = 0;
  int currentColor = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundSecondary,
      floatingActionButton: AdicionarCarrinho(produto: widget.produto),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppbarDetalhes(produto: widget.produto),
              SliderDetalhes(
                image: widget.produto.image,
                onChange: (index) {
                  setState(() {
                    currentImage = index;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => AnimatedContainer(
                    duration: const Duration(microseconds: 300),
                    width: currentImage == index ? 15 : 8,
                    height: 8,
                    margin: const EdgeInsets.only(right: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentImage == index
                          ? Colors.white
                          : Colors.transparent,
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                  bottom: 100,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DescricaoDetalhes(produto: widget.produto),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Cores",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: List.generate(
                        widget.produto.colors.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              currentColor = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(
                              milliseconds: 300,
                            ),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentColor == index
                                  ? Colors.white
                                  : widget.produto.colors[index],
                              border: currentColor == index
                                  ? Border.all(
                                      color: widget.produto.colors[index])
                                  : null,
                            ),
                            padding: currentColor == index
                                ? const EdgeInsets.all(20)
                                : null,
                            margin: const EdgeInsets.only(right: 10),
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: widget.produto.colors[index],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Descricao(
                      descricao: widget.produto.descricao,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
