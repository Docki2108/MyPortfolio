import 'package:flutter/material.dart';

class Project {
  final String title;
  final String description;
  //final String imageUrl;

  Project({
    required this.title,
    required this.description,
  });
}

List<Project> projects = [
  Project(
    title: 'Project 1',
    description: 'Description of Project 1',
  ),
  Project(
    title: 'Project 2',
    description: 'Description of Project 2',
  ),
];

class ProjectWidget extends StatelessWidget {
  final Project project;

  ProjectWidget({required this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(project.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(project.description),
          ),
        ],
      ),
    );
  }
}


// ProjectWidget(
//                           project: Project(
//                             title: '123',
//                             description: 'description',
//                           ),
//                         ),