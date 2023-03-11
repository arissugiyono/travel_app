import 'package:airplane_app/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/widgets/custom_button_navigation_item.dart';

class mainPage extends StatelessWidget {
  const mainPage({super.key});

  Widget buildContent() {
    return homePage();
  }

  Widget customButtonNavigation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
          bottom: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            customButtonNavigationItem(
              imageUrl: 'assets/icon_home.png',
              isSelected: true,
            ),
            customButtonNavigationItem(
              imageUrl: 'assets/icon_booking.png',
            ),
            customButtonNavigationItem(
              imageUrl: 'assets/icon_card.png',
            ),
            customButtonNavigationItem(
              imageUrl: 'assets/icon_setting.png',
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customButtonNavigation(),
        ],
      ),
    );
  }
}
