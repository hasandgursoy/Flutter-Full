import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            child: _PngImage(ways: 1, paths: ImagesItems().appleWithBook),
          ),
          Image.network(
            "https://icdn.ensonhaber.com/resimler/galeri/11_2734.jpg",
            // Image gelmez ise aşşağıda ki yapı gelecek.
            errorBuilder: (context, error, stackTrace) => _PngImage(
              ways: 2,
              paths: ImagesItems().TheStripOfDream,
            ),
          )
        ],
      ),
    );
  }
}

class _PngImage extends StatelessWidget {
  const _PngImage({
    Key? key,
    required this.paths,
    required this.ways,
  }) : super(key: key);

  final String paths;
  final int ways;

  @override
  Widget build(BuildContext context) {
    return ways == 1
        ? Image.asset(
            paths,
            // Bulunduğu alanı kapla tarzı bir anlama geliyor.
            fit: BoxFit.cover,
          )
        : Image.network(
            paths,
            // Bulunduğu alanı kapla tarzı bir anlama geliyor.
            fit: BoxFit.cover,
          );
  }
}

class ImagesItems {
  final String appleWithBook = "assets/apple.png";
  final String TheStripOfDream =
      "https://icdn.ensonhaber.com/resimler/galeri/20_1299.jpg";
}
