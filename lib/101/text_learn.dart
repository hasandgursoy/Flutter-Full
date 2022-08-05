import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key, this.userName}) : super(key: key);

  final String? userName;
  final String name = "hxxx";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ("Buy the best one $name ${name.length}" * 9),
              maxLines: 3,
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis,
              textScaleFactor: .9,
              style: ProjectStyles.wellcomeStyle,
            ),
            Text(
              (ProjectTexts.welcome * 9),
              maxLines: 3,
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis,
              textScaleFactor: .9,
              // Material IO'dan bu şekilde çekiyoruz.
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.amberAccent,
                  ),
            ),
            Text(
              userName ?? "selami",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(color: ProjectColors.welcomeColor),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle wellcomeStyle = const TextStyle(
    wordSpacing: 10,
    letterSpacing: 3,
    decoration: TextDecoration.underline,
    inherit: true,
  );
}

class ProjectColors {
  static Color welcomeColor = Colors.yellow;
}

class ProjectTexts {
  static String welcome = "Merhaba";
}
