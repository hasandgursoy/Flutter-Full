import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            // Button Yapısını özelleştirmek istiyorsak ilgili prop'a MaterialStateProp üzerinden resolveWith ile ulaşabiliyoruz.
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.amberAccent;
              }

              return Colors.green;
            })),
            child: const Text('Tick MEE'),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Data')),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.access_alarm_sharp)),

          // Butona tıklanma özelliğinin kapalı olmasını istiyorsak onPressed'a null vermemiz yeterli.
          const FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.add),
          ),
          OutlinedButton(
            onPressed: () {
              // Servise istek at
              // sayfanın rengini düzenle
            },
            // Button'nun adına özel props'a ulaşmak için aşşağıdaki yol çok güzel
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.pink,
                padding: const EdgeInsets.all(10),
                shape: const CircleBorder()),
            child: const Text("Anther"),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.abc),
            label: const Text("antoher"),
          ),
          // Biz birşeye tıklanabilir bir özellik vermek istiyorsak
          // Onu Inkwell içine alabiliriz.
          // Aynı işi yapan gesture dedector var ama gerek yok :D Inkwell daha çok faydalı.
          InkWell(
            onTap: () {},
            child: const Text('Custom'),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            // Style'a tekarar özelleştirilmiş styleFrom'dan girdik.
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                )),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, right: 40, left: 40),
              child: Text(
                "Place Bid",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Borders:
// CircleBorder(), RoundedRectangleBorder()