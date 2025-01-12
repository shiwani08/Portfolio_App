import 'package:flutter/material.dart';
import 'package:portfolio_app/projects/calculatorScreen.dart';
import 'package:portfolio_app/projects/stopwatch.dart';
import 'package:portfolio_app/projects/steps_count.dart';
import 'package:portfolio_app/projects/addTask.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  final List<Map<String, String>> _projects = [
    {
      'title': 'Calculator',
      'description': 'A simple calculator app built with Flutter.',
      'route': '/calculator', // Route for Calculator
    },
    {
      'title': 'Stopwatch',
      'description': 'A simple stopwatch app built with Flutter.',
      'route': '/stopwatch', // Route for Stopwatch
    },
    {
      'title': 'Steps counter',
      'description': 'A simple steps counter app built with Flutter.',
      'route': '/stepsCounter', // Route for StepsCounter
    },
    {
      'title': 'To-Do List',
      'description': 'A simple To-Do List counter app built with Flutter.',
      'route': '/addTask', // Route for StepsCounter
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _projects.length,
        itemBuilder: (context, index) {
          final project = _projects[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(project['title'] ?? ''),
              subtitle: Text(project['description'] ?? ''),
              leading: const Icon(Icons.work_outline),
              onTap: () {
                // Navigate to the specific project screen based on route
                if (project['route'] == '/calculator') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CalculatorView()),
                  );
                } else if (project['route'] == '/stopwatch') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Stopwatch()),
                  );
                } else if (project['route'] == '/stepsCounter') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StepsCount()),
                  );
                }else if (project['route'] == '/addTask') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AddTask()),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}

class ProjectDetailScreen extends StatelessWidget {
  final String title;
  final String description;

  const ProjectDetailScreen({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
