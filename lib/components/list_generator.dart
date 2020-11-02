import 'package:azkara/components/constants.dart';
import 'package:azkara/components/photo_container.dart';
import 'package:azkara/screens/description.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'top_bar.dart';

class ListGenerator extends StatefulWidget {
  @override
  _ListGeneratorState createState() => _ListGeneratorState();
}

class _ListGeneratorState extends State<ListGenerator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildTopAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (_, index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      PhotoContainer(
                        photo: 'images/image_20.png',
                        label: 'Утром ',
                      ),
                      PhotoContainer(
                        photo: 'images/image_22.png',
                        label: 'Вечером',
                      ),
                      PhotoContainer(
                        photo: 'images/image_21.png',
                        label: 'После молитвы',
                      ),
                      PhotoContainer(
                        photo: 'images/image_20.1.png',
                        label: 'Важные дуаю Часть 1',
                      ),
                      PhotoContainer(
                        photo: 'images/image_21.png',
                        label: 'Вечером',
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  AppBar buildTopAppBar() {
    return AppBar(
      backgroundColor: kMainBackground,
      title: Time(),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.notifications_none,
              color: kActiveFontColor,
              size: 25.0,
            ),
          ),
        )
      ],
    );
  }
}
