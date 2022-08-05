import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(
              width: 300,
              height: 200,
              child: Text('a' * 50),
            ),
            const SizedBox
                .shrink(), // Sadece boş bir alan yaratmak için kullanıyoruz.
            SizedBox.square(
              // width height eşit yapıda tutar.
              dimension: 50,
              child: Text('b' * 10),
            ),
            Container(
                width: 100,
                height: 100,
                constraints:
                    const BoxConstraints(maxWidth: 100, maxHeight: 300),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(8),
                decoration: ProjectUtility.boxDecoration,
                child: Text('aa' * 30)),
          ],
        ));
  }
}

// Bu birinci yöntem İlgili şeyi extends edip super içinde bunları yazmak.
class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              width: 10,
              color: Colors.white12,
            ),
            boxShadow: const [
              BoxShadow(
                  color: Colors.purpleAccent,
                  offset: Offset(0.1, 1),
                  blurStyle: BlurStyle.solid,
                  spreadRadius: 5,
                  blurRadius: 15)
            ],
            gradient: const LinearGradient(
                colors: [Colors.lightGreen, Colors.indigo]));
}

// İkinci yöntem klasik yöntem

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      border: Border.all(
        width: 10,
        color: Colors.white12,
      ),
      boxShadow: const [
        BoxShadow(
            color: Colors.purpleAccent,
            offset: Offset(0.1, 1),
            blurStyle: BlurStyle.solid,
            spreadRadius: 5,
            blurRadius: 15)
      ],
      gradient:
          const LinearGradient(colors: [Colors.lightGreen, Colors.indigo]));
}
