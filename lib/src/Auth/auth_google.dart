import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authenticator {
  static Future<User?> iniciarSesion({required BuildContext context}) async {
    FirebaseAuth authenticator = FirebaseAuth.instance;

    User? user;

    GoogleSignIn objGoogleSingIn = GoogleSignIn();
    GoogleSignInAccount? objGoogleSingInAccoun = await objGoogleSingIn.signIn();
    if (objGoogleSingInAccoun != null) {
      GoogleSignInAuthentication objGoogleSingAuthentificator =
          await objGoogleSingInAccoun.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: objGoogleSingAuthentificator.accessToken,
          idToken: objGoogleSingAuthentificator.idToken);

      try {
        UserCredential userCredential =
            await authenticator.signInWithCredential(credential);
        user = userCredential.user;
        return user;
      } on FirebaseAuthException catch (e) {
        print('Error en la autentificacion');
      }
    }
  }
}
