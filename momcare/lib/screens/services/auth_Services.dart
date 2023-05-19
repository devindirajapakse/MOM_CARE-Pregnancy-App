import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserService {
  static Future<bool> loginUser(String email, String password) async {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .catchError((error) => throw error);

    var token = await FirebaseAuth.instance.currentUser?.getIdToken();

    await FirebaseFirestore.instance
        .collection('midwife')
        .doc(userCredential.user!.uid)
        .get()
        .then((DocumentSnapshot snapshot) {
      if (!snapshot.exists) {
        throw 'Login Fail';
      }
      return true;
    }).catchError((error) => throw error);

    await FirebaseFirestore.instance
        .collection('mother')
        .doc(userCredential.user!.uid)
        .get()
        .then((DocumentSnapshot snapshot) {
      if (!snapshot.exists) {
        throw 'Login Fail';
      }
      return false;
    }).catchError((error) => throw error);

    return false;
  }
}
