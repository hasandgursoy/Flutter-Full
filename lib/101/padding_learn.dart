import 'package:flutter/material.dart';

class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // Bütün widgetlara etki edecek kenarlara yaslanmasını engellemek için column'a padding vericez.

      body: Padding(
        padding: ProjectPadding().pagePaddingVertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(color: Colors.white, height: 100),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Container(color: Colors.white, height: 100),
            ),
            Padding(
              padding: ProjectPadding().pagePaddingVertical + ProjectPadding().pagePaddingRightOnly,
              child: Container(color: Colors.white, height: 100),
            ),
          ],
        ),
      ),
    );
  }
}

// Container yapısının kendisine ait padding'i varmış :D

class ProjectPadding {
  final EdgeInsets pagePaddingVertical =
      const EdgeInsets.symmetric(vertical: 10);
  final EdgeInsets pagePaddingRightOnly = const EdgeInsets.only(right: 10);
}
