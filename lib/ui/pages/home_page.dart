import 'package:airplane_app/cubit/auth_cubit.dart';
import 'package:airplane_app/ui/widgets/destination_card.dart';
import 'package:airplane_app/ui/widgets/destination_tile.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:airplane_app/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  Widget header() {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is authSucess) {
          return Container(
            margin: EdgeInsets.only(
              top: 30,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo, \n${state.user.name}',
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        'Where to fly today?',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image_profile.png'),
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          );
        } else {
          return SizedBox();
        }
      },
    );
  }

  Widget popularDestinations() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            destinationCard(
              name: 'Lake Ciliwung',
              city: 'Tangerang',
              rating: 4.8,
              imageUrl: 'assets/image_destination1.png',
            ),
            destinationCard(
              name: 'White Houses',
              city: 'TSpain',
              rating: 4.7,
              imageUrl: 'assets/image_destination2.png',
            ),
            destinationCard(
              name: 'Hill Heyo',
              city: 'Monaco',
              rating: 4.8,
              imageUrl: 'assets/image_destination3.png',
            ),
            destinationCard(
              name: 'Menarra',
              city: 'Japan',
              rating: 5.0,
              imageUrl: 'assets/image_destination4.png',
            ),
            destinationCard(
              name: 'Payung Teduh',
              city: 'Singapore',
              rating: 4.8,
              imageUrl: 'assets/image_destination5.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget newDestination() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: defaultMargin,
        right: defaultMargin,
        bottom: 100,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'New This Year',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
        SingleChildScrollView(
          child: destinationTile(
            name: 'Danau Beratan',
            city: 'Singajara',
            imageUrl: 'assets/image_destination6.png',
            rating: 4.5,
          ),
        ),
        destinationTile(
          name: 'Sydney Opera',
          city: 'Australia',
          imageUrl: 'assets/image_destination7.png',
          rating: 4.7,
        ),
        destinationTile(
          name: 'Roma',
          city: 'Italy',
          imageUrl: 'assets/image_destination8.png',
          rating: 4.8,
        ),
        destinationTile(
          name: 'Hill Hey',
          city: 'Monaco',
          imageUrl: 'assets/image_destination10.png',
          rating: 4.7,
        ),
        destinationTile(
          name: 'Payung Teduh',
          city: 'Singapore',
          imageUrl: 'assets/image_destination9.png',
          rating: 4.5,
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        popularDestinations(),
        newDestination(),
      ],
    );
  }
}
