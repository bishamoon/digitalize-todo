import 'package:flutter/material.dart';
import 'package:todo/screens/new_todo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                textRenbo('t', Colors.blue.withOpacity(0.3)),
                textRenbo('o', Colors.red.withOpacity(0.3)),
                textRenbo('d', Colors.green.withOpacity(0.3)),
                textRenbo('o',
                    const Color.fromARGB(255, 86, 24, 162).withOpacity(0.3)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              'fuerh  fuhdiu  erue iej9op papidjf , eolfpeo pokpofkp kfopwkpfokw kwofikfoije eokgoekjg ',
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'AdobeClean',
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 170, 164, 154)),
            ),
            SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(NewTodo.screenRoute);
              },
              style: TextButton.styleFrom(
                  fixedSize: const Size(150, 15),
                  backgroundColor: const Color.fromARGB(255, 105, 102, 92)),
              child: const Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Text textRenbo(String text, Color c) {
    return Text(
      text,
      style: TextStyle(
          color: c,
          fontSize: 60,
          fontFamily: 'AdobeClean',
          fontWeight: FontWeight.w600),
    );
  }
}
