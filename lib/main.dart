import 'package:clinic/ui/screen/app_bar.dart';
import 'package:clinic/ui/screen/my_profile_screen.dart';
import 'package:clinic/ui/screen/profile_screen.dart';
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
      theme: ThemeData(fontFamily: 'SF Pro'),
      // home: const ProfileScreen(),
      home: MyProfileScreen(),
      // home: AppTabBar(),

      // home: LoginScreen(),
    );
  }
}
