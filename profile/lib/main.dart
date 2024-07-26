import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile",
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              height: 100,
              child: Center(
                child: Text(
                  "Jinyeong Choi",
                  style: TextStyle(
                    color: Color.fromARGB(224, 0, 90, 5),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Image.asset(
              'lib/assets/me.jpg',
              height: 150,
              fit: BoxFit.contain,
            ),
            Container(
              height: 120,
              child: const Center(
                child: Text(
                  "Kyunghee Univ.\nComputer Science Engineering 23'",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                "ESFJ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  'lib/assets/univ.jpg',
                  height: 205,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'lib/assets/coding.jpg',
                  height: 205,
                  fit: BoxFit.cover,
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
