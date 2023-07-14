import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Services {
  FirebaseAuth _auth = FirebaseAuth.instance;
  var firebaseuser;

  Future<String> signin(String email, String password) async {
    try {
      UserCredential uc = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      firebaseuser = FirebaseAuth.instance.currentUser;
      return "True";
    } catch (e) {
      return (e.toString());
    }
  }

  Future register(String phoneNumber, String UserName, String Password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: UserName, password: Password);
      firebaseuser = FirebaseAuth.instance.currentUser;
      String a = FirebaseAuth.instance.currentUser!.uid;
      await FirebaseFirestore.instance
          .collection('users')
          .doc(firebaseuser.uid)
          .set({
        "UserName": UserName,
        "PhoneNumber": phoneNumber,
      });
      return (true);
    } catch (e) {
      return (e.toString());
    }
  }
}
