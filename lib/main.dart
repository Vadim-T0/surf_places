import 'package:flutter/material.dart';
import 'package:surf_places/ui/screen/sight_details.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      //home: SightListScreen(),
      home: SightDetails(),
      title: 'App Title',
    );
  }
}
