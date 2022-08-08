import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _CustomCard2(
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(
                  child: Text(
                "Ali",
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    ?.copyWith(color: Colors.amberAccent),
              )),
            ),
          ),
          const _CustomCard(
            child: SizedBox(
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomCard2 extends StatelessWidget {
  const _CustomCard2({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins().cardMargins,
      color: Colors.white,
      shape: const StadiumBorder(),
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins().cardMargins,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}

// Card Compenentinin en önemli özelliği ekranda bir tık önde durur.

class ProjectMargins {
  final EdgeInsets cardMargins = const EdgeInsets.all(10);
}

// Main'deki Theme'de CardTheme ' de bütün kartların yapılarını ayaralyabiliyoruz.

// Borders
// StadiumBorder()
// CircleBoder()
// RoundedRectangleBorder()