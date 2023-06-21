import 'package:flutter/material.dart';

class AnimationPositioned extends StatefulWidget {
  const AnimationPositioned({Key? key}) : super(key: key);

  @override
  State<AnimationPositioned> createState() => _AnimationPositionedState();
}

class _AnimationPositionedState extends State<AnimationPositioned>
    with TickerProviderStateMixin {
  bool _isVisible = false;
  late AnimationController controller;

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: _DurationItems.durationNormal,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        _changeVisible();
        controller.animateTo(_isVisible ? 1 : 0);
      }),
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedPositioned(
              top: _isVisible ? 0 : 50,
                  duration: _DurationItems.durationNormal, child: const Text("data"),
              curve: Curves.fastEaseInToSlowEaseOut,
            )
          ],
        ),
      ),
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static const Duration durationNormal = Duration(milliseconds: 1000);
}
