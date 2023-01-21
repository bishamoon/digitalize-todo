import 'dart:async';

import 'package:flutter/material.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
   @override
     void initState() {  
    super.initState();  
    Timer(const Duration(seconds: 4),  
            ()=>Navigator.pushReplacement(context,  
            MaterialPageRoute(builder:  
                (context) => const HomeScreen()  
            )  
         )  
    );  
  }  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 249, 222),
      body: SafeArea(
        child: Center(
          child: Text(
            'todo',
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.w600,
              fontFamily: 'AdobeClean',
              color: Color.fromARGB(255, 99, 96, 87),
            ),
          ),
        ),
      ),
    );
  }
}
