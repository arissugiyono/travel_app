import 'package:airplane_app/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:airplane_app/shared/theme.dart';

class GetStaredPage extends StatelessWidget {
  const GetStaredPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/image_get_started.png'))),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly Like a Bird',
                  style: whiteTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Explore new world with us and let \n yourself get an amazing experiences',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                  textAlign: TextAlign.center,
                ),
                CustomButton(
                  title: 'Get Started',
                  onPress: () {
                    Navigator.pushNamed(context, '/sign-up');
                  },
                  width: 220,
                  margin: EdgeInsets.only(top: 50, bottom: 80),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
