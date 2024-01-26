import 'package:flutter/material.dart';



class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Sign In'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
             const SizedBox(height: 20),
             const TextField(
                obscureText: true, // Hide password characters
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
             const SizedBox(height: 30),
              FloatingActionButton.extended(
                // Use extended for wider button
                onPressed: () {}, // Handle login logic here
                label:const Text('Log In'),
                icon:const Icon(Icons.login),
              ),
            ],
          ),
        ),
      ),
    );
  }
}