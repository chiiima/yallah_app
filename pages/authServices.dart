import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

// Authentification avec google


class AuthService {
// Google Sign In
  signInWithGoogle() async {
    // begin interactive sign in process
    final GoogleSignInAccount? gUser = await GoogleSignIn(
      clientId: "86078506706-s1dicmafrtos4a8ud1q07n3oc8kppv6p.apps.googleusercontent.com"
    ).signIn();

    // obtain auth details from request
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;


// create a new credential for user
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );
// finally, lets sign in
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
    // log out
    signOut(){
        FirebaseAuth.instance.signOut();
        }

    }
