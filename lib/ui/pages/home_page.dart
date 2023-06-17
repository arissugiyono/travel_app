import 'package:airplane_app/cubit/auth_cubit.dart';
import 'package:airplane_app/cubit/destination_cubit.dart';

import 'package:airplane_app/ui/widgets/destination_card.dart';
import 'package:airplane_app/ui/widgets/destination_tile.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:airplane_app/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/destination_model.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  void initState() {
    context.read<DestinationCubit>().fetchDestinations();
    super.initState();
  }

  Widget header() {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is authSucess) {
          // kondisi jika state sukses makan mereturn di bawah ini
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
                        'Hallo, \n ${state.user.name}', // merubah nama user sesuai dengan user yg login
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
                  decoration: const BoxDecoration(
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
          return const SizedBox();
        }
      },
    );
  }

  Widget popularDestinations(List<destinationModel> destination) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: destination.map((destinationModel destination) {
            return destinationCard(destination);
          }).toList(),
        ),
      ),
    );
  }

  Widget newDestination(List<destinationModel> destination) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: defaultMargin,
        right: defaultMargin,
        bottom: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: destination.map((destinationModel destination) {
          return destinationTile(destination);
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DestinationCubit, DestinationState>(
      listener: (context, state) {
        if (state is DestinationFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
            content: Text(state.error),
          ));
        }
      },
      builder: (context, state) {
        if (state is DestinationSucess) {
          return ListView(
            children: [
              header(),
              popularDestinations(state.destinations),
              newDestination(state.destinations),
            ],
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
