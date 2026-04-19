import 'package:flutter/material.dart';

class ExplicitAnimationExample extends StatefulWidget {
  const ExplicitAnimationExample({super.key});

  @override
  ExplicitAnimationExampleState createState() =>
      ExplicitAnimationExampleState();
}

class ExplicitAnimationExampleState extends State<ExplicitAnimationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    ); // AnimationController

    _sizeAnimation = Tween<double>(
      begin: 100,
      end: 200,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toogleAnimation() {
    if (_isExpanded) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
    _isExpanded = !_isExpanded;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animacion Explicita')),
      body: Center(
        child: GestureDetector(
          onTap: _toogleAnimation,
          child: Container(
            width: _sizeAnimation.value,
            height: _sizeAnimation.value,
            color: Colors.purple,
            child: Center(
              child: Text('Toca aqui', style: TextStyle(color: Colors.white)),
            ), // Center
          ), // Container
        ), // GestureDetector // Center
      ),
    ); // Scaffold
  }
}
