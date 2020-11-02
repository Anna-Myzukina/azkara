import 'package:azkara/components/constants.dart';
import 'package:azkara/components/list_generator.dart';
import 'package:azkara/components/view_description_page.dart';
import 'package:flutter/material.dart';

class PhotoContainer extends StatelessWidget {
  PhotoContainer({this.photo, this.label});

  final String photo;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(photo),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0, vertical: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    label,
                    style: kPhotoListTextStyle,
                  ),
                  ViewDescriptionPage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
