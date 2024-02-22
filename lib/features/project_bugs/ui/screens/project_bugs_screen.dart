import 'package:flutter/material.dart';

class ProjectBugsScreen extends StatelessWidget {
  const ProjectBugsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drug App'),
      ),
      body: const Center(
        child: Text('Project Bugs'),
      ),
    );
  }
}
