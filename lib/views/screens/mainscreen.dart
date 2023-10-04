import 'package:flutter/material.dart';
import 'package:jobhubv2_0/views/common/exports.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ReusableText(
          text: "Welcome",
          style: appStyle(20, Color(kDark.value), FontWeight.bold),
        ),
      ),
    );
  }
}
