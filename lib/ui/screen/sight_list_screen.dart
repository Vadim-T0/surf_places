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
        title: Padding(
          padding: EdgeInsets.fromLTRB(16, 40, 16, 0), // Отступы из Figma
          child: Text(
            "Список\nинтересных мест",
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              height: 36 / 32,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        backgroundColor: Colors.transparent, // Прозрачный AppBar
        elevation: 0, // Тень
        toolbarHeight: 136, // Из Figma 64+72
      ),
    );
  }
}
