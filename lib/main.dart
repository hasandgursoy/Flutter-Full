import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_full_learn/101/Icon_learn.dart';
import 'package:flutter_full_learn/101/color_learn.dart';

import '101/stateless_larn.dart';
//import 'package:flutter_full_learn/101/container_sized_box_learn.dart';
//import '101/app_bar.dart';
//import '101/button_learn.dart';
//import '101/scaffold_learn.dart';
//import 'package:flutter_full_learn/101/text_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          // Bu değeri theme.of(context).errorColor şeklinde projenin her yerinde çağırabilirim.
          errorColor: ColorsItems().sulu,
          // AppBar ayarlarını burada yapıcaz.
            appBarTheme: const AppBarTheme(
          // Appbar'ın hemen üstündeki yer.
          systemOverlayStyle: SystemUiOverlayStyle.light,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        )),
        home: StateLessLearn());
  }
}
