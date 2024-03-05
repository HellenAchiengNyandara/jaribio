import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:jaribio/View/login.View.dart'; // Make sure the path matches your project structure

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp( // Ensure using GetMaterialApp
      title: 'Your App Title',
      home: SplashView(),
    );
  }
}

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), navigateToLogin);
  }

  void navigateToLogin() {
    Get.offAll(() => const LoginView()); // Corrected navigation call
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'FINDME',
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
