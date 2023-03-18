import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';

class interestsItem extends StatelessWidget {
  final String interestsName;
  const interestsItem({super.key, required this.interestsName});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
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
            interestsName,
            style: blackTextStyle.copyWith(
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
