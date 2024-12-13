import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Profile',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const TextField(
                decoration: InputDecoration(labelText: 'First Name')),
            const SizedBox(height: 10),
            const TextField(
                decoration: InputDecoration(labelText: 'Last Name')),
            const SizedBox(height: 10),
            const TextField(decoration: InputDecoration(labelText: 'Email')),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: const Text('Save')),
          ],
        ),
      ),
    );
  }
}
