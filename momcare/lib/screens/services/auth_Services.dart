
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserService {
  // static Future<void> createUser(UserModel userModel, String password) async {
  //   await FirebaseAuth.instance
  //       .createUserWithEmailAndPassword(email: userModel.email, password: password)
  //       .then((value) async {
  //     await FirebaseFirestore.instance
  //         .collection('users')
  //         .doc(value.user!.uid)
  //         .set(userModel.toMap())
  //         .catchError((error) => throw error);
  //   }).catchError((error) => throw error);
  // }

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