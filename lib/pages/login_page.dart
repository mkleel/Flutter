import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login.png",
          fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20.0,
            ),
          const Text("Welcome",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 32.0
            ),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(              
                    labelText: "Username",
                    hintText: "Enter Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password",
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),

                ElevatedButton(
                 // ignore: avoid_print
                 onPressed: (){print("hello mukesh");},
                 style: TextButton.styleFrom(),
                 child: const Text("Login"),
                 )
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}