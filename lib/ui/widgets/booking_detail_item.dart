import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';

class bookingDetailItem extends StatelessWidget {
  final String title;
  final String valueText;
  final Color valueColor;

  const bookingDetailItem(
      {super.key,
      required this.title,
      required this.valueText,
      required this.valueColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: 6,
            ),
            width: 16,
            height: 16,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_checklist.png'))),
          ),
          Text(
            title,
          ),
          Spacer(),
          Text(
            valueText,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semiBold,
              color: valueColor,
            ),
          )
        ],
      ),
    );
  }
}
