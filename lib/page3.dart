import 'package:flutter/material.dart';

class Page3 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Text(""), centerTitle: true),
      body: Container(
        child: Center(
          child: Text(
            'The report will be generated and sent to your email in several minutes.',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}