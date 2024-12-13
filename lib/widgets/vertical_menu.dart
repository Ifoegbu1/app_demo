import 'package:flutter/material.dart';

class VerticalMenu extends StatelessWidget {
  final Function(String) onMenuItemSelected;

  const VerticalMenu({super.key, required this.onMenuItemSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      width: 100,
      child: Column(
        children: [
          _menuItem('Menu', Icons.menu, () => onMenuItemSelected('Menu')),
          _menuItem(
              'Profile', Icons.person, () => onMenuItemSelected('Profile')),
          _menuItem(
              'Support', Icons.support, () => onMenuItemSelected('Support')),
          _menuItem(
              'History', Icons.history, () => onMenuItemSelected('History')),
          _menuItem('Map', Icons.map, () => onMenuItemSelected('Map')),
        ],
      ),
    );
  }

  Widget _menuItem(String label, IconData icon, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, size: 30),
      title: Text(label, style: const TextStyle(fontSize: 14)),
      onTap: onTap,
    );
  }
}
