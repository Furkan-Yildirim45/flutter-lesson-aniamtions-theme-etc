import 'package:flutter/material.dart';

class AnimationsLearn extends StatefulWidget {
  const AnimationsLearn({Key? key}) : super(key: key);

  @override
  State<AnimationsLearn> createState() => _AnimationsLearnState();
}

class _AnimationsLearnState extends State<AnimationsLearn> {
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
            AnimatedCrossFade(
                firstChild: Container(
                    width: 100, height: 100, color: Colors.green),
                secondChild: Center(
                    child:
                        Container(width: 100, height: 100, color: Colors.lime)),
                crossFadeState: _isVisible
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: _DurationItems.durationNormal)
          ],
        ),
      ),
    );
  }
}

class _DurationItems{
  static const Duration durationNormal = Duration(milliseconds: 1000);
}