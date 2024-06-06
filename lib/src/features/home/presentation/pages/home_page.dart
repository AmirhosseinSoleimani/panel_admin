import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const homePageName = '/home-page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('home'),
    );
  }
}