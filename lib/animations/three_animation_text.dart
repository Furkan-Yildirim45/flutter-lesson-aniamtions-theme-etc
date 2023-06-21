import 'package:flutter/material.dart';

class AnimationsLearnText extends StatefulWidget {
  const AnimationsLearnText({Key? key}) : super(key: key);

  @override
  State<AnimationsLearnText> createState() => _AnimationsLearnTextState();
}

class _AnimationsLearnTextState extends State<AnimationsLearnText> {
  bool _isVisible = false;

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _changeVisible,
      ),
      body: SafeArea(
        child: Column(
          children: [
            AnimatedDefaultTextStyle(
              style: (_isVisible ? context.textTheme().titleMedium : context.textTheme().titleLarge) ?? const TextStyle(),
                //style: (_isVisible ? Theme.of(context).textTheme.titleLarge : Theme.of(context).textTheme.titleMedium) ?? const TextStyle(),
                duration: _DurationItems.durationNormal,
                child: const Text("Furkan"))
          ],
        ),
      ),
    );
  }
}

extension BuildContextExtension on BuildContext{
  TextTheme textTheme(){
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static const Duration durationNormal = Duration(milliseconds: 1000);
}
