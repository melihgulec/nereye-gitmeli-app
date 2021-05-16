import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nereye_gitmeli_app/Helpers/ToastHelper.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<User> signIn(String email, String password) async{
    try{
      var user = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return user.user;
    } on FirebaseAuthException catch(e){
      print(e.code);
      switch(e.code){
        case 'user-not-found': ToastHelper().makeToastMessage('Kullanıcı bulunamadı.'); break;
        case 'wrong-password': ToastHelper().makeToastMessage('Şifre yanlış.'); break;
        case 'too-many-requests': ToastHelper().makeToastMessage('Çok fazla istek gönderdiniz. Lütfen biraz bekleyin.'); break;
      }
    }

    return null;
  }

  signOut() async{
    return await _auth.signOut();
  }

  Future<User> createUser(String name, String email, String password) async{
    try
    {
      var user = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      await _firestore.collection("User").doc(user.user.uid).set({
        "name": name,
        "email": email,
      });
      return user.user;
    }on FirebaseAuthException catch(e){
      switch(e.code)
      {
        case 'weak-password': ToastHelper().makeToastMessage('Parola 6 karakterden fazla olmalıdır.'); break;
      }
    }

    return null;
  }
}