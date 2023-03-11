import 'package:flutter/material.dart';
import 'package:airplane_app/shared/theme.dart';
import 'package:shadow_overlay/shadow_overlay.dart';

class detailPage extends StatelessWidget {
  const detailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return ShadowOverlay(
        shadowHeight: 150,
        shadowWidth: 400,
        shadowColor: Colors.black,
        child: Container(
          width: double.infinity,
          height: 450,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/image_destination1.png'),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          backgroundImage(),
        ],
      ),
    );
  }
}
