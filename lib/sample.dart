import 'package:flutter/material.dart';

class SamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sample example",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold) ,),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),body: Center(
      child: Text("kj", textAlign: TextAlign.center),
    )

    );
  }
}


