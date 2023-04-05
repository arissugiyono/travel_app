import 'package:airplane_app/cubit/pages_cubit.dart';
import 'package:airplane_app/ui/pages/card_page.dart';
import 'package:airplane_app/ui/pages/home_page.dart';
import 'package:airplane_app/ui/pages/settings_page.dart';
import 'package:airplane_app/ui/pages/transaction_page.dart';
import 'package:flutter/material.dart';

import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/widgets/custom_button_navigation_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class mainPage extends StatelessWidget {
  const mainPage({super.key});

  Widget buildContent(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return homePage();
      case 1:
        return transactionPage();
      case 2:
        return cardPage();
      case 3:
        return settingsPage();

      default:
        return homePage();
    }

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
              index: 0,
              imageUrl: 'assets/icon_home.png',
        
            ),
            customButtonNavigationItem(
              index: 1,
              imageUrl: 'assets/icon_booking.png',
            ),
            customButtonNavigationItem(
              index: 2,
              imageUrl: 'assets/icon_card.png',
            ),
            customButtonNavigationItem(
              index: 3,
              imageUrl: 'assets/icon_setting.png',
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PagesCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customButtonNavigation(),
            ],
          ),
        );
      },
    );
  }
}
