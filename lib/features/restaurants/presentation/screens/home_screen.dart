import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🍛 Kandartology'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // 🔹 TODO: Show profile menu later
              debugPrint('Profile pressed');
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Discover Nasi Kandar near you',
          style: TextStyle(fontSize: 18),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 🔹 TODO: Add restaurant later
          debugPrint('Add restaurant pressed');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}