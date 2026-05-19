import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const TextField(decoration: InputDecoration(labelText: 'Email')),
            const SizedBox(height: 8),
            const TextField(obscureText: true, decoration: InputDecoration(labelText: 'Password')),
            const SizedBox(height: 12),
            ElevatedButton(onPressed: () => Navigator.pushReplacementNamed(context, AppRoutes.home), child: const Text('Login')),
            TextButton(onPressed: () => Navigator.pushNamed(context, AppRoutes.signup), child: const Text('Create account')),
          ],
        ),
      ),
    );
  }
}
