import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBarAnimation extends StatefulWidget{
  const LoadingBarAnimation({
    super.key,
  });

  @override
  State<LoadingBarAnimation> createState() => _LoadingBarAnimationState();
}

class _LoadingBarAnimationState extends State<LoadingBarAnimation> with TickerProviderStateMixin{
  final Duration duration = const Duration(milliseconds: 1200);
  final double loadingBarSize = 50.0;
  @override
  Widget build(BuildContext context) {
    return SpinKitRing(
      color: Colors.red,
      size: loadingBarSize,
      controller: AnimationController(vsync: this,duration: duration),
    );
  }
}
