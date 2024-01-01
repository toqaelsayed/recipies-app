import 'package:flutter/material.dart';
import 'package:recipies/pages/register.dart';

import 'login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/splash.jpg"),
          fit: BoxFit.cover,
        )),
        child: Container(
          margin: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/logo.png",width: 200,
              ),
              const Text(
                "Cooking Done The Easy Way",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),

              const SizedBox(
                height: 140,
              ),
              ElevatedButton(
                  onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Register()));
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(250, 50),
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(horizontal: 15)),
                  child: const Text("Register",
                      style: TextStyle(color: Colors.white))),
              const SizedBox(
                height: 10,
              ),

              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LoginPage()));

                  },
                  child: const Text(
                    "Sign in",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
