import 'package:flutter/material.dart';

class ImplicitasAnimationExample extends StatefulWidget {
  const ImplicitasAnimationExample({super.key});

  @override
  State<ImplicitasAnimationExample> createState() =>
      ImplicitasAnimationExampleState();
}

class ImplicitasAnimationExampleState
    extends State<ImplicitasAnimationExample> {
  bool _big = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animación Implícita')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _big = !_big;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            width: _big ? 200 : 100,
            height: _big ? 200 : 100,
            color: _big ? Colors.blue : Colors.red,
            child: Center(
              child: Text('toca aqui', style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
