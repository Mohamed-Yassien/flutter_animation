import 'package:flutter/material.dart';
import 'package:flutter_anim/first_screen.dart';
import 'package:flutter_anim/route_transition.dart';

class ControlAnimateScreen extends StatefulWidget {
  const ControlAnimateScreen({Key? key}) : super(key: key);

  @override
  State<ControlAnimateScreen> createState() => _ControlAnimateScreenState();
}

class _ControlAnimateScreenState extends State<ControlAnimateScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 20,
      ),
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(animationController)
      ..addListener(() {
        setState(() {});
      });
    animationController.forward().whenComplete(
          () => Navigator.push(
            context,
            RouteTransition(
              screen: const FirstScreen(),
            ),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 40,
          width: double.infinity,
          color: Colors.red,
          child: Stack(
            children: [
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    width: constraints.maxWidth * animation.value,
                    color: Colors.amber,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
