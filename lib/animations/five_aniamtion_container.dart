import 'package:flutter/material.dart';

class AnimationContainer extends StatefulWidget {
  const AnimationContainer({Key? key}) : super(key: key);

  @override
  State<AnimationContainer> createState() => _AnimationContainerState();
}

class _AnimationContainerState extends State<AnimationContainer> with TickerProviderStateMixin{
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
            _changeVisible();
            controller.animateTo(_isVisible ? 1 : 0);
          }
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: AnimatedContainer(
                duration: _DurationItems.durationNormal,
                width: double.infinity,
                height: _isVisible ? 0 : MediaQuery.of(context).size.height * 0.5,
                color: Colors.deepOrange,
              ),
            )
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
