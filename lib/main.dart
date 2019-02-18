import 'package:flutter/material.dart';
import 'home_page.dart';
import 'sample.dart';
import 'expandable_list.dart';



void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Band Name Survey',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExpandableList(title: 'Possible Band Names'),
      debugShowCheckedModeBanner: false,
//    home: const ExpandableList(),

    );
  }
}
