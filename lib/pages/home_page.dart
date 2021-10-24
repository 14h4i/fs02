import 'package:flutter/material.dart';
import 'package:fs02/values/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView(
        children: [
          TextButton(
            child: const Text('Session 01'),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.session01);
            },
          ),
          TextButton(
            child: const Text('Session 02'),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.session02);
            },
          ),
        ],
      ),
    );
  }
}
