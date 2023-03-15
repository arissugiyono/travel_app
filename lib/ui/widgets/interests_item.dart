import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';

class interestsItem extends StatelessWidget {
  const interestsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          margin: EdgeInsets.only(right: 6),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/icon_checklist.png'))),
        ),
        Text(
          'Kids Park',
          style: blackTextStyle.copyWith(
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
