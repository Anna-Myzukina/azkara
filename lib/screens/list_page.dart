import 'package:azkara/components/bottom_bar.dart';
import 'package:azkara/components/constants.dart';
import 'package:azkara/components/list_generator.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBackground,
      appBar: buildAppBar(),
      body: ListGenerator(),
      bottomNavigationBar: NavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      elevation: 0.8,
      backgroundColor: kMainBackground,
      title: Text(
        'Азкары',
        style: TextStyle(
          color: kAppbarTextColor,
          fontSize: 17.0,
          fontWeight: FontWeight.w700,
          fontFamily: 'OpenSans',
        ),
      ),
      leading: GestureDetector(
        onTap: () {
          //TODO write listener code here
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: kActiveFontColor,
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.search,
              color: kInactiveFontColor,
              size: 20.0,
            ),
          ),
        )
      ],
    );
  }
}
