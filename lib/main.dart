import 'package:app_demo/screens/history_screen.dart';
import 'package:app_demo/screens/home_screen.dart';
import 'package:app_demo/screens/map_screen.dart';
import 'package:app_demo/screens/menu_screen.dart';
import 'package:app_demo/screens/profile_screen.dart';
import 'package:app_demo/screens/support_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/menu': (context) => const MenuScreen(),
        '/map': (context) => const EmbeddedMap(),
        '/profile': (context) => const ProfileScreen(),
        '/support': (context) => const SupportScreen(),
        '/history': (context) => const HistoryScreen(),
      },
    );
  }
}
