import 'package:airplane_app/models/destination_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DestinationService {
  CollectionReference _destinationRef =
      FirebaseFirestore.instance.collection('destinations');

  Future<List<destinationModel>> fetchDestinations() async {
    try {
      QuerySnapshot result = await _destinationRef.get();

      List<destinationModel> destinations = result.docs.map((e) {
        return destinationModel.formJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();
      return destinations;
    } catch (e) {
      throw e;
    }
  }
}
