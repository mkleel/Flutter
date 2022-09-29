import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routs.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
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
              fontSize: 28,
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
                    height: 40.0,
                  ),

                  ElevatedButton(
                   // ignore: avoid_print
                   onPressed: (){
                    Navigator.pushNamed(context, MyRoutes.homeRoute);

                    },
                   style: TextButton.styleFrom(minimumSize: const Size(120, 40)),
                   
                   child: const Text("Login",),
                   )
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}