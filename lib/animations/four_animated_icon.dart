import 'package:flutter/material.dart';

class AnimationIcon extends StatefulWidget {
  const AnimationIcon({Key? key}) : super(key: key);

  @override
  State<AnimationIcon> createState() => _AnimationIconState();
}

class _AnimationIconState extends State<AnimationIcon> with TickerProviderStateMixin{
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
    controller = AnimationController(vsync: this,duration: _DurationItems.durationNormal);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        }
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: InkWell(onTap: (){
              _changeVisible();
              controller.animateTo(_isVisible ? 1 : 0);
            },child: AnimatedIcon(icon: AnimatedIcons.menu_close, progress: controller)))
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
