import 'package:flutter/material.dart';
import 'package:surf_places/ui/const/colors.dart';
import 'package:surf_places/ui/const/text_styles.dart';
import 'package:surf_places/mocks.dart';
import 'package:surf_places/ui/screen/sight_card.dart';

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
          titleSpacing: 0, // Убираем отступы слева и справа от title (leading, actions)
          backgroundColor: Colors.transparent, // Делаем AppBar прозрачным
          elevation: 0, // Убираем тень у AppBar
          toolbarHeight: 112, // Высота AppBar (по Figma 40+72)
          title: Container(
            padding: EdgeInsets.fromLTRB(16, 40, 16, 0), // Отступы для title (Figma)
            alignment: Alignment.bottomLeft,
            child: Text("Список\nинтересных мест", style: textAppBar),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: mocks.map((sight) => SightCard(sight)).toList(),
          ),
        ),
        backgroundColor: scaffoldBackground);
  }
}
