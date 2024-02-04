import 'package:flutter/material.dart';
import 'package:youtube_clone/screens/navbar_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Colors.white,
            backgroundColor: Colors.black,
          ),
          appBarTheme: const AppBarTheme(backgroundColor: Colors.black)),
      home: const SafeArea(child: NavBarScreen()),
    );
  }
}
