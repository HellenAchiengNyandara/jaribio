import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:jaribio/View/login.View.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.to(() => LoginView());
    });

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
