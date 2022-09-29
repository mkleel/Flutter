import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routs.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
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
            Text("Welcome $name",
            style: const TextStyle(
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
                    onChanged: (value){
                      name = value;
                      setState(() {
                        
                      });
                    },
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

                  InkWell(                    
                    onTap:() async{
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(const Duration(seconds: 1));
                      // ignore: use_build_context_synchronously
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    } ,
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      // color: Colors.deepPurple,
                      alignment: Alignment.center,

                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: 
                          BorderRadius.circular(changeButton ? 50 : 8)
                      ),
                      child: changeButton 
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                            )
                         
                        : const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                    ),
                  ),

                  // ElevatedButton(
                  //  // ignore: avoid_print
                  //  onPressed: (){
                  //   Navigator.pushNamed(context, MyRoutes.homeRoute);

                  //   },
                  //  style: TextButton.styleFrom(minimumSize: const Size(120, 40)),
                   
                  //  child: const Text("Login",),
                  //  )
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}