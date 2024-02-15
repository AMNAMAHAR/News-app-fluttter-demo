import 'package:flutter/material.dart';

class About_Page extends StatefulWidget {
  const About_Page({super.key});

  @override
  State<About_Page> createState() => _About_PageState();
}

class _About_PageState extends State<About_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('About Page'),
      ),
    );
  }
}