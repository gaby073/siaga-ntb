import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../constant.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});
  final int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    //create list of pages
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body:
      bottomNavigationBar: GNav(
        // rippleColor: Colors.amber[300]!,
        hoverColor: Colors.blue[500]!,
        gap: 12,
        activeColor: Colors.blue,
        iconSize: 24,
        padding: EdgeInsets.symmetric(horizontal: 36, vertical: 20),
        duration: Duration(milliseconds: 400),
        tabBackgroundColor: ColorConstants.WhiteCo,
        color: Colors.black38,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.newspaper,
            text: 'Berita',
          ),
          GButton(
            icon: Icons.call,
            text: 'Nomor',
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          // setState(() {
          //   _selectedIndex = index;
          // });
        },
      ),
    );
  }
}
