import 'package:flutter/material.dart';
import 'animaciones/implicitas_screen/implicitas_animation_example.dart';
import 'animaciones/explicitas_screen/explicita_animation_example.dart';

void main() {
  runApp(AnimacionesApp());
}

class AnimacionesApp extends StatelessWidget {
  const AnimacionesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo de Animaciones',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animaciones en Flutter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Animación Implícita'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ImplicitasAnimationExample(),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Animación Explícita'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ExplicitAnimationExample()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
