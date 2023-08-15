import 'package:airplane_app/models/destination_model.dart';
import 'package:equatable/equatable.dart';

class transactionModel extends Equatable {
  final String id;
  final destinationModel destination;
  final int ammountOfTraveler;
  final String selectedSeat;
  final bool insurance;
  final bool refundable;
  final int price;
  final int grandTotal;

  final double vat;

  transactionModel({
    this.id = '',
    required this.destination,
    this.ammountOfTraveler = 0,
    this.selectedSeat = '',
    this.insurance = false,
    this.refundable = false,
    this.price = 0,
    this.vat = 0,
    this.grandTotal = 0,
  });
  factory transactionModel.formJson(String id, Map<String, dynamic> json) =>
      transactionModel(
        destination: destinationModel.formJson(
            json['destination']['id'], json['destination']),
        id: id,
        ammountOfTraveler: json['ammountOfTraveler'],
        selectedSeat: json['selectedSeat'],
        insurance: json['insurance'],
        refundable: json['refundable'],
        vat: json['vat'],
        price: json['price'],
        grandTotal: json['grandTotal'],
      );

  @override
  List<Object?> get props => [
        destination,
        ammountOfTraveler,
        selectedSeat,
        insurance,
        refundable,
        price,
        vat,
        grandTotal,
      ];
}
