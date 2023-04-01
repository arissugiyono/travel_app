import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class successCheckoutPage extends StatelessWidget {
  const successCheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 150,
              margin: EdgeInsets.only(bottom: 80),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image_success.png'))),
            ),
            Text(
              'Well Booked 😍',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Are you ready to explore the new\nworld of experiences?',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
              textAlign: TextAlign.center,
            ),
            CustomButton(
              margin: EdgeInsets.only(top: 50),
              width: 220,
              title: 'My Bookings',
              onPress: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main-page', (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
