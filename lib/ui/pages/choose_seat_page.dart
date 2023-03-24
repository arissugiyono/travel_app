import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/widgets/custom_button.dart';
import 'package:airplane_app/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';

class chooseSeatPage extends StatelessWidget {
  const chooseSeatPage({super.key});

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
              const seatItem(
                status: 2,
              ),
              const seatItem(
                status: 2,
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
              const seatItem(
                status: 0,
              ),
              const seatItem(
                status: 2,
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
              const seatItem(
                status: 0,
              ),
              const seatItem(
                status: 0,
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
              const seatItem(
                status: 0,
              ),
              const seatItem(
                status: 2,
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
              const seatItem(
                status: 1,
              ),
              const seatItem(
                status: 1,
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
              const seatItem(
                status: 0,
              ),
              const seatItem(
                status: 0,
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
              const seatItem(
                status: 0,
              ),
              const seatItem(
                status: 2,
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
              const seatItem(
                status: 0,
              ),
              const seatItem(
                status: 0,
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
              const seatItem(
                status: 0,
              ),
              const seatItem(
                status: 0,
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
              const seatItem(
                status: 2,
              ),
              const seatItem(
                status: 0,
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
                  'A3, B3',
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
                  'IDR 540.000.000',
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
  }

  Widget checkoutButton() {
    return customButton(
      title: 'Continue to Checkout',
      onPress: () => () {},
      margin: EdgeInsets.only(
        top: 30,
        bottom: 46,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
