import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('welcome'),
      ),
    );
  }
}

final welcomeRoute = GoRoute(
  name: 'welcome',
  path: '/welcome',
  builder: (context, state) => const Welcome(),
);