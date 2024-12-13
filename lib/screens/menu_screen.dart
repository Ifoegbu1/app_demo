import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Profile'),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          ListTile(
            title: const Text('Support'),
            onTap: () {
              Navigator.pushNamed(context, '/support');
            },
          ),
          ListTile(
            title: const Text('History'),
            onTap: () {
              Navigator.pushNamed(context, '/history');
            },
          ),
        ],
      ),
    );
  }
}
