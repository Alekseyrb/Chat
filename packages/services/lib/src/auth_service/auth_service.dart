import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  Future<User?> signIn(String email, String password) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found that email');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provider');
      }
    }
    return user;
  }
}
