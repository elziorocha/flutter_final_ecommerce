import 'package:flutter/widgets.dart';

class SliderDetalhes extends StatelessWidget {
  final Function(int) onChange;
  final String image;

  const SliderDetalhes(
      {super.key, required this.image, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        onPageChanged: onChange,
        itemBuilder: (context, index) {
          return Hero(
            tag: image,
            child: Image.asset(image),
          );
        },
      ),
    );
  }
}
