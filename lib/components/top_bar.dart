import 'package:azkara/components/constants.dart';
import 'package:flutter/material.dart';

class Time extends StatefulWidget {
  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {
  List<String> times = ["07:12", "12:43", "15:29", "18:11", "19:53"];
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: times.length,
          itemBuilder: (context, index) => buildText(index)),
    );
  }

  Widget buildText(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: <Widget>[
            Text(
              times[index],
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: selectedIndex == index
                    ? kActiveFontColor
                    : kInactiveFontColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
