import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/transaction_model.dart';
import 'booking_detail_item.dart';

class TransactionCard extends StatelessWidget {
  final transactionModel transaction;
  const TransactionCard(this.transaction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    image: NetworkImage(transaction.destination.imageUrl),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.destination.name,
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      transaction.destination.city,
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
                    transaction.destination.rating.toString(),
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
                  valueText: '${transaction.ammountOfTraveler} person',
                ),
                bookingDetailItem(
                  title: 'Seat',
                  valueColor: Colors.black,
                  valueText: transaction.selectedSeat,
                ),
                bookingDetailItem(
                  title: 'Insurance',
                  valueColor: transaction.insurance ? kGreenColor : kRedColor,
                  valueText: transaction.insurance ? 'YES' : 'NO',
                ),
                bookingDetailItem(
                  title: 'Refundable',
                  valueColor: transaction.refundable ? kGreenColor : kRedColor,
                  valueText: transaction.refundable ? 'YES' : 'NO',
                ),
                bookingDetailItem(
                  title: 'VAT',
                  valueColor: Colors.black,
                  valueText: ' ${(transaction.vat * 100).toStringAsFixed(0)} %',
                ),
                bookingDetailItem(
                  title: 'Price',
                  valueColor: Colors.black,
                  valueText: NumberFormat.currency(
                          locale: 'id', symbol: 'IDR ', decimalDigits: 0)
                      .format(transaction.price),
                ),
                bookingDetailItem(
                  title: 'Grand Total',
                  valueColor: kPrimaryColor,
                  valueText: NumberFormat.currency(
                          locale: 'id', symbol: 'IDR ', decimalDigits: 0)
                      .format(transaction.grandTotal),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
