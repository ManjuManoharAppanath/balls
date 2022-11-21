import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: Center(
        child: TextButton(onPressed: (){
          setState(() {
            i=Random().nextInt(3)+1;
          });
        },
            child:Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(image:
            DecorationImage(image: AssetImage('images/ball$i.png'),
            ),
              ),
              ),
        ),
      ),
    ),
    );
  }
}
