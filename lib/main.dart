import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exploration!',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyhomePage(),
    );
  }
}

class MyhomePage extends StatelessWidget {
  const MyhomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Space Exploration Planner!'),
      ),
      body: const Column(
        children: [
          Progress(),
          TaskList(), // Added TaskList here for visibility
        ],
      ),
    );
  }
}

class Progress extends StatelessWidget {
  const Progress({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('You are this far away from exploring the whole universe'),
        LinearProgressIndicator(
          value: 0.0,
        )
      ],
    );
  }
}

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TaskItem(label: 'Load rocket with supplies'),
        TaskItem(label: 'Launch the rocket'),
        TaskItem(label: 'Circle the home planet'),
        TaskItem(label: 'Head out to the first moon'),
        TaskItem(label: 'Launch moon lander'),
      ],
    );
  }
}

class TaskItem extends StatelessWidget {
  final String label;
  const TaskItem({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Checkbox(onChanged: null, value: false),
        Text(label), // Display label using Text widget
      ],
    );
  }
}
