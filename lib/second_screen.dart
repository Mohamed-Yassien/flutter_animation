import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.pink,
        child: Center(
          child: MaterialButton(
            color: Colors.amber,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'screen 1',
            ),
          ),
        ),
      ),
    );
  }
}
