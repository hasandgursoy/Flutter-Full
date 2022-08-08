import 'package:flutter/material.dart';

class StateLessLearn extends StatelessWidget {
  const StateLessLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          _TittleText(title: "Data")
        ],
      ),
    );
  }
}

// Widgetlarımızı aşşağıdaki gibi extract widget diyerek dışarı çıkarıyoruz.
// Ve widgetlarımızın isminin başına "_" işaretini koyuyoruz ki başka yerden ulaşışmasın.
// StateLess widget'ın içinde değişken oluşturmak istiyorsak değişken ya nullable olacak yada required olarak constructor'da tanımlanacak.

class _TittleText extends StatelessWidget {
  const _TittleText({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.headline3);
  }
}
