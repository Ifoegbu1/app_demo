import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the menu screen
                Navigator.pushNamed(context, '/menu');
              },
              child: const Text('Menu'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the map screen (placeholder for now)
                Navigator.pushNamed(context, '/map');
              },
              child: const Text('Map'),
            ),
          ],
        ),
      ),
    );
  }
}
