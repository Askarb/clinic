import 'package:clinic/ui/screen/profile_screen.dart';
import 'package:flutter/material.dart';

import 'ui/screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'SF Pro'),
      // home: ProfileScreen(),
      home: LoginScreen(),
    );
  }
}
