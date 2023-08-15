import 'package:airplane_app/models/transaction_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class transactionService {
  // menambahkan untuk colectionnya

  CollectionReference _transactionReference =
      FirebaseFirestore.instance.collection('transactions');

  // metod untuk melakukan set user.
  Future<void> createTransaction(transactionModel transaction) async {
    try {
      _transactionReference.add({
        'destination': transaction.destination.toJson(),
        'ammountOfTreveler': transaction.ammountOfTraveler,
        'selectedSeat': transaction.selectedSeat,
        'insurance': transaction.insurance,
        'refunable': transaction.refundable,
        'vat': transaction.vat,
        'price': transaction.price,
        'grandTotal': transaction.grandTotal,
      });
    } catch (e) {
      throw e;
    }
  }
  Future<List<transactionModel>> fetchTransactions() async {
    try {
      QuerySnapshot result = await _transactionReference.get();

      List<transactionModel> transactions = result.docs.map((e) {
        return transactionModel.formJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();
      return transactions;
    } catch (e) {
      throw e;
    }
  }

}
