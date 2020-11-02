import 'package:azkara/components/constants.dart';
import 'package:azkara/screens/description.dart';
import 'package:flutter/material.dart';

class ViewDescriptionPage extends StatelessWidget {
  const ViewDescriptionPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DescriptionPage()));
      },
      child: Text(
        'Посмотреть >',
        style: TextStyle(
          color: kActiveFontColor,
          fontSize: 12.0,
          fontFamily: 'OpenSans',
        ),
      ),
    );
  }
}
