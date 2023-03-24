import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';

class seatItem extends StatelessWidget {
  final int status;
  const seatItem({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    imageSwitch() {
      switch (status) {
        case 0:
          return kImageAvaliable;

        case 1:
          return kImageSelected;

        case 2:
          return kImageUnavailable;

        default:
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imageSwitch().toString()))),
    );
  }
}
