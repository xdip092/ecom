import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quick Cart')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text('Welcome back!'),
          SizedBox(height: 12),
          TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.search), hintText: 'Search groceries...')),
          SizedBox(height: 12),
          Card(child: ListTile(title: Text('Fresh Mart'), subtitle: Text('4.7 ★ · 1.2 km'))),
        ],
      ),
    );
  }
}
