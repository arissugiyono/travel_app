import 'package:airplane_app/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:airplane_app/shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        height: 200,
        width: 300,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image_card.png'),
            ),
            boxShadow: [
              BoxShadow(
                color: kPrimaryColor.withOpacity(0.5),
                blurRadius: 60,
                offset: Offset(0, 10),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Aris Sugiyono',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 24,
                  width: 24,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icon_plane.png'))),
                ),
                Text(
                  'Pay',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 41),
              child: Text(
                'Balance',
                style: whiteTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: light,
                ),
              ),
            ),
            Container(
              child: Text(
                'IDR 280.000.000',
                style: whiteTextStyle.copyWith(
                  fontSize: 26,
                  fontWeight: medium,
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 80, bottom: 10),
        child: Text(
          'Big Bonus 🎉',
          style: blackTextStyle.copyWith(
            fontSize: 32,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: EdgeInsets.only(
          top: 10,
          bottom: 50,
        ),
        child: Text(
          'We give you early credit so that \nyou can buy a flight ticket',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startButton() {
      return CustomButton(
        title: 'Start Fly Now',
        onPress: (() {
          Navigator.pushNamedAndRemoveUntil(
              context, '/main-page', (route) => false);
        }),
        width: 220,
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          bonusCard(),
          title(),
          subtitle(),
          startButton(),
        ]),
      ),
    );
  }
}
