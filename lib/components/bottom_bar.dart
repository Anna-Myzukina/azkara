import 'package:flutter/material.dart';
import 'constants.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        showSelectedLabels: false,
        unselectedFontSize: 15.0,
        selectedFontSize: 15.0,
        iconSize: 32.0,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("icons/Group_222.png"),
              color: Colors.black,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("icons/Group_223.png"),
              color: Colors.black,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("icons/Group_225.png"),
              color: Colors.black,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("icons/Group_226.png"),
              color: Colors.black,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("icons/Group_227.png"),
              color: Colors.black,
            ),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
