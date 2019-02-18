import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  // Declare a field that holds the Todo
  final String title;

  // In the constructor, require a Todo
  DetailScreen({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create our UI
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(title),
      ),
    );
  }
}