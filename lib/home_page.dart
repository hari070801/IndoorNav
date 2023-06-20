import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:qrscanner/screens/home_screen.dart';
import 'package:qrscanner/screens/settings_screen.dart';
import 'package:qrscanner/Unity%20Scenes/scene2.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final screen = <Widget>[
      const HomeScreen(),
      const Scene2(),
      const SettingScreen(),
    ];
    final items = <Widget>[
      const Icon(Icons.home),
      const Icon(Icons.maps_ugc_sharp),
      const Icon(Icons.settings),
    ];
    return Scaffold(
      body: screen[index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade300,
        color: Colors.white54,
        items: items,
        index: index,
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
        animationDuration: const Duration(milliseconds: 700),
      ),
    );
  }
}
