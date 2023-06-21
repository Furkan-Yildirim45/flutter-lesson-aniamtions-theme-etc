import 'package:flutter/material.dart';
import 'package:untitled/main_page.dart';
import 'package:untitled/theme/theme_light.dart';
import 'animations/five_aniamtion_container.dart';
import 'animations/four_animated_icon.dart';
import 'animations/one_crossfade.dart';
import 'animations/six_animation_positioned.dart';
import 'animations/three_animation_text.dart';
import 'animations/two_opacity.dart';
import 'form_learn.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme().theme,
      home: const AnimationPositioned(),
    );
  }
}
