import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Экран приложения.
class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Список\nинтересных мест",
          maxLines: 2,
          style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 20,
        toolbarHeight: 200,
      ),
      body: Center(
     //   child: Text("Hello!"),
      ),
    );
  }
}
