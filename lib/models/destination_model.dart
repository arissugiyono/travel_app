import 'package:equatable/equatable.dart';

class destinationModel extends Equatable {
  final String id;
  final String name;
  final String imageUrl;
  final String city;
  final double rating;
  final int price;

  destinationModel({
    required this.id,
    this.name = '',
    this.imageUrl = '',
    this.city = '',
    this.rating = 0.0,
    this.price = 0,
  });

  factory destinationModel.formJson(String id, Map<String, dynamic> json) =>
      destinationModel(
        id: id,
        name: json['name'],
        city: json['city'],
        imageUrl: json['imageUrl'],
        rating: json['rating'],
        price: json['price'],
      );
  @override
  List<Object?> get props => [id, name, city, imageUrl, rating, price];
}
