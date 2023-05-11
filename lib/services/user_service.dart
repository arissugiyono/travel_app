import 'package:airplane_app/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class userService {
  // menambahkan untuk colectionnya

  CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  // metod untuk melakukan set user.
  Future<void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'hobby': user.hobby,
        'balance': user.balance,
      });
    } catch (e) {
      throw e;
    }
  }

  Future<UserModel> getUserById(String id) async {
    try {
      DocumentSnapshot snapshot = await _userReference.doc(id).get();
      return UserModel(
        id: id,
        email: snapshot['email'],
        name: snapshot['name'],
        hobby: snapshot['hobby'],
        balance: snapshot['balance'],
      );
    } catch (e) {
      throw (e);
    }
  }
}