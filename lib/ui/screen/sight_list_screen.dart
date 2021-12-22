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
        appBar: MyAppBar(height: 112, title: 'Список\nинтересных мест'),
        body: SingleChildScrollView(
          child: Column(
            children: mocks.map((sight) => SightCard(sight)).toList(),
          ),
        ),
        backgroundColor: scaffoldBackground);
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String title;

  const MyAppBar({
    Key key,
    @required this.height,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 64, 16, 0),
      child: Text(title, style: textAppBar),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
