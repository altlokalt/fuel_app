// ignore_for_file: body_might_complete_normally_nullable

import 'package:google_sign_in/google_sign_in.dart';

// ignore: duplicate_ignore
class GoogleAuthHelper {
  // ignore
  /// Handle Google Signin to authenticate user
  Future<GoogleSignInAccount?> googleSignInProcess() async {
    // ignore: no_leading_underscores_for_local_identifiers
    GoogleSignIn _googleSignIn = GoogleSignIn();
    GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if (googleUser != null) {
      return googleUser;
    }
  }

  /// To Check if the user is already signedin through google
  alreadySignIn() async {
    // ignore: no_leading_underscores_for_local_identifiers
    GoogleSignIn _googleSignIn = GoogleSignIn();
    bool alreadySignIn = await _googleSignIn.isSignedIn();
    return alreadySignIn;
  }

  /// To signout from the application if the user is signed in through google
  Future<GoogleSignInAccount?> googleSignOutProcess() async {
    // ignore: no_leading_underscores_for_local_identifiers
    GoogleSignIn _googleSignIn = GoogleSignIn();
    GoogleSignInAccount? googleUser = await _googleSignIn.signOut();

    return googleUser;
  }
}
