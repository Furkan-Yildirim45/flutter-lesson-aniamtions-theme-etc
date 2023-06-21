import 'package:flutter/material.dart';

class AnimationsLearnOpacity extends StatefulWidget {
  const AnimationsLearnOpacity({Key? key}) : super(key: key);

  @override
  State<AnimationsLearnOpacity> createState() => _AnimationsLearnOpacityState();
}

class _AnimationsLearnOpacityState extends State<AnimationsLearnOpacity> {
  bool _isOpacity = false;

  void _changeVisible() {
    setState(() {
      _isOpacity = !_isOpacity;
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
            AnimatedOpacity(
                opacity: _isOpacity ? 1 : 0,
                duration: _DurationItems.durationNormal,
              child: Text("Furkan",style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}

class _DurationItems {
  static const Duration durationNormal = Duration(milliseconds: 1000);
}
