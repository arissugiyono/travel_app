import 'package:airplane_app/cubit/seat_cubit.dart';
import 'package:airplane_app/models/destination_model.dart';
import 'package:airplane_app/models/transaction_model.dart';
import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/pages/checkout_page.dart';
import 'package:airplane_app/ui/widgets/custom_button.dart';
import 'package:airplane_app/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

// ignore: camel_case_types
class chooseSeatPage extends StatelessWidget {
  final destinationModel destination;

  const chooseSeatPage(
    this.destination, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Text(
          'Select Your \nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget chooseSeat() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Row(
          children: [
            // NOTES : AVAILABLE
            Container(
              margin: const EdgeInsets.only(
                right: 6,
              ),
              width: 16,
              height: 16,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_available.png'))),
            ),
            const Text(
              'Available',
            ),
            // NOTES : SELECTED
            Container(
              margin: const EdgeInsets.only(
                right: 6,
                left: 10,
              ),
              width: 16,
              height: 16,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_selected.png'))),
            ),
            const Text(
              'Selected',
            ),
            // NOTES : UNAVAILABLE
            Container(
              margin: const EdgeInsets.only(
                right: 6,
                left: 10,
              ),
              width: 16,
              height: 16,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_unavailable.png'))),
            ),
            const Text(
              'Unavailable',
            ),
          ],
        ),
      );
    }

    Widget selectedSeat() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.only(
              top: 30,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 22,
              vertical: 30,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: kWhiteColor,
            ),
            child: Column(
              children: [
                // TODO : SEAT INDICATOR
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        'A',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        'B',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        '',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        'C',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        'D',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                //TODO: SEAT 1
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    seatItem(
                      id: 'A1',
                      isAvaliable: false,
                    ),
                    seatItem(
                      id: 'B1',
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        '1',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )),
                    ),
                    seatItem(
                      id: 'C1',
                      isAvaliable: false,
                    ),
                    seatItem(
                      id: 'D1',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                // TODO : SEAT 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    seatItem(
                      id: 'A2',
                    ),
                    seatItem(
                      id: 'B2',
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        '2',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )),
                    ),
                    seatItem(
                      id: 'C2',
                    ),
                    seatItem(
                      id: 'D2',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                // TODO : SEAT 3
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    seatItem(
                      id: 'A3',
                    ),
                    seatItem(
                      id: 'B3',
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        '3',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )),
                    ),
                    seatItem(
                      id: 'C3',
                    ),
                    seatItem(
                      id: 'D3',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                // TODO : SEAT 4
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    seatItem(
                      id: 'A4',
                    ),
                    seatItem(
                      id: 'B4',
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        '4',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )),
                    ),
                    seatItem(
                      id: 'C4',
                    ),
                    seatItem(
                      id: 'D4',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                // TODO : SEAT 5
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    seatItem(
                      id: 'A5',
                    ),
                    seatItem(
                      id: 'B5',
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        '5',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )),
                    ),
                    seatItem(
                      id: 'C5',
                    ),
                    seatItem(
                      id: 'D5',
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your seat',
                        style: greyTextStyle,
                      ),
                      Text(
                        state.join(', '),
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: greyTextStyle,
                      ),
                      Text(
                        NumberFormat.currency(
                                locale: 'id', symbol: 'IDR ', decimalDigits: 0)
                            .format(state.length * destination.price),
                        style: purpleTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      );
    }

    Widget checkoutButton() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return CustomButton(
            title: 'Continue to Checkout',
            onPress: () {
              int price = destination.price * state.length;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => checkoutPage(transactionModel(
                          destination: destination,
                          ammountOfTraveler: state.length,
                          selectedSeat: state.join(''),
                          insurance: true,
                          refundable: false,
                          price: price,
                          grandTotal: price + (price * 0.45).toInt()))));
            },
            margin: EdgeInsets.only(
              top: 30,
              bottom: 46,
            ),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          title(),
          chooseSeat(),
          selectedSeat(),
          checkoutButton(),
        ],
      ),
    );
  }
}
