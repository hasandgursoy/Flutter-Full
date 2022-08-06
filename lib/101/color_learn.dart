import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: Theme.of(context).errorColor,
            child: const Text("Data"),
          ),
          Container(
            color: Theme.of(context).colorScheme.onError,
            child: Text("Data",
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    ?.copyWith(color: Theme.of(context).errorColor)),
          ),
        ],
      ),
    );
  }
}

class ColorsItems {
  final Color porchase = const Color(0xffEDBF61);
  final Color sulu = const Color.fromRGBO(198, 237, 97, 1);

  // Yukarıdaki yapılar çok güzel ancak çok zehir bir yöntem olarak
  // Theme yapısını kullanarak projenin başında ilgili color'ı ezebiliriz. bunun için main dart'a bak.

}
