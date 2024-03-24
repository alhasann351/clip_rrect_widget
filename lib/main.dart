import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('ClipRRect Widget', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white,),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Container(
                height: 100,
                width: 300,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10,),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.elliptical(50, 20)),
              child: Container(
                height: 100,
                width: 300,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10,),
            ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(50), bottomRight: Radius.circular(20)),
              child: Container(
                height: 100,
                width: 300,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10,),
            ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(50), bottomRight: Radius.circular(20)),
              child: Image.network('https://uploads-ssl.webflow.com/5f841209f4e71b2d70034471/60bb4a2e143f632da3e56aea_Flutter%20app%20development%20(2).png', height: 200, width: 400, fit: BoxFit.fill,),
            ),
          ],
        ),
      ),
    );
  }
}
