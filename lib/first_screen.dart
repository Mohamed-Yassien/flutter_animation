import 'package:flutter/material.dart';
import 'package:flutter_anim/route_transition.dart';
import 'package:flutter_anim/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.teal,
        child: Center(
          child: MaterialButton(
            color: Colors.amber,
            onPressed: () {
              Navigator.push(
                context,
                RouteTransition(
                  screen: const SecondScreen(),
                ),
              );
            },
            child: const Text('screen 2'),
          ),
        ),
      ),
    );
  }
}
