import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surf_places/ui/const/colors.dart';
import 'package:surf_places/ui/const/text_styles.dart';

/// Экран приложения.
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
            child: RichText(
              text: TextSpan(
                style: textAppBar,
                children: [
                  TextSpan(
                      text: 'С',
                      style: TextStyle(color: fontGreen)),
                  TextSpan(text: 'писок\n'),
                  TextSpan(
                      text: 'и',
                      style: TextStyle(color: fontYellow)),
                  TextSpan(text: 'нтересных мест'),
                ],
                //      textAlign: TextAlign.left,
              ),
            ),
          ),
          backgroundColor: Colors.transparent, // Прозрачный AppBar
          elevation: 0, // Тень
          toolbarHeight: 136, // Из Figma 64+72
        ),
        backgroundColor: scaffoldBackground);
  }
}
