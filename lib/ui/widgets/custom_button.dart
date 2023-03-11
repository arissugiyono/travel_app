import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPress;
  final EdgeInsets margin;
  const customButton(
      {super.key,
      required this.title,
      this.width = double.infinity,
      required this.onPress,
      this.margin = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      margin: margin,
      child: TextButton(
          onPressed: onPress,
          style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius))),
          child: Text(
            title,
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          )),
    );
  }
}
