import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../widgets/booking_detail_item.dart';
import '../widgets/destination_tile.dart';

class checkoutPage extends StatelessWidget {
  const checkoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50, bottom: 10),
            width: 291,
            height: 65,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image_checkout.png'))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CGK',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Tangerang',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'TLC',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Ciliwung',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      );
    }

    Widget itemDetail() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        height: 440,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            18,
          ),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      fit: BoxFit
                          .cover, // untuk image agar menyesuaikan ukuran container
                      image: AssetImage('assets/image_destination1.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Tangerang',
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      margin: EdgeInsets.all(2),
                      height: 24,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icon_star.png'),
                        ),
                      ),
                    ),
                    Text(
                      '4.8',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Booking Details',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 6),
              child: Column(
                children: [
                  bookingDetailItem(
                    title: 'Traveler',
                    valueColor: Colors.black,
                    valueText: '2 person',
                  ),
                  bookingDetailItem(
                    title: 'Seat',
                    valueColor: Colors.black,
                    valueText: 'A3, B3',
                  ),
                  bookingDetailItem(
                    title: 'Insurance',
                    valueColor: kGreenColor,
                    valueText: 'YES',
                  ),
                  bookingDetailItem(
                    title: 'Refundable',
                    valueColor: kRedColor,
                    valueText: 'NO',
                  ),
                  bookingDetailItem(
                    title: 'VAT',
                    valueColor: Colors.black,
                    valueText: '45%',
                  ),
                  bookingDetailItem(
                    title: 'Price',
                    valueColor: Colors.black,
                    valueText: 'IDR 8.500.690',
                  ),
                  bookingDetailItem(
                    title: 'Grand Total',
                    valueColor: kPrimaryColor,
                    valueText: 'IDR 12.000.000',
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget payementDetail() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/image_card.png'))),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 6),
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/icon_plane.png'))),
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
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 80.400.000',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Current Balance',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget payNowButton() {
      return CustomButton(
        title: 'Pay Now',
        onPress: () {},
        margin: EdgeInsets.only(top: 44),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          route(),
          itemDetail(),
          payementDetail(),
          payNowButton(),
        ],
      ),
    );
  }
}
