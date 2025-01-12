import 'package:flutter/material.dart';

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
    },
    {
      'title': 'Stopwatch',
      'description': 'A simple stopwatch app built with Flutter.',
    },
    {
      'title': 'Steps counter',
      'description': 'A simple steps counter app built with Flutter.',
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
                // Navigate to Project Detail Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProjectDetailScreen(
                      title: project['title'] ?? '',
                      description: project['description'] ?? '',
                    ),
                  ),
                );
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
