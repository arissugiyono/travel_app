import 'package:airplane_app/models/destination_model.dart';
import 'package:equatable/equatable.dart';

class transactionModel extends Equatable {
  final destinationModel destination;
  final int ammountOfTraveler;
  final String selectedSeat;
  final bool insurance;
  final bool refundable;
  final int price;
  final int grandTotal;

  transactionModel({
    required this.destination,
    this.ammountOfTraveler = 0,
    this.selectedSeat = '',
    this.insurance = false,
    this.refundable = false,
    this.price = 0,
    this.grandTotal = 0,
  });

  @override
  List<Object?> get props => [
        destination,
        ammountOfTraveler,
        selectedSeat,
        insurance,
        refundable,
        price,
        grandTotal,
      ];
}
