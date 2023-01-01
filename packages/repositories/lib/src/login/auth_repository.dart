import 'package:firebase_auth/firebase_auth.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';

class AuthRepository {
  final AuthService authService;

  AuthRepository(this.authService);

  Future<UserDataModel> singIn(String email, String password) async {
    final response = await authService.signIn(email, password);

    final result = response?.toUser() ??
        UserDataModel(
          displayName: '',
          email: '',
          emailVerified: false,
          isAnonymous: false,
          phoneNumber: '',
          photoURL: '',
          refreshToken: '',
          tenantId: '',
          uid: '',
        );

    return result;
  }

  Future<UserDataModel> registration(String email, String password) async {
    final response = await authService.registration(email, password);

    final result = response?.toUser() ??
        UserDataModel(
          displayName: '',
          email: '',
          emailVerified: false,
          isAnonymous: false,
          phoneNumber: '',
          photoURL: '',
          refreshToken: '',
          tenantId: '',
          uid: '',
        );

    return result;
  }
}

extension on User {
  UserDataModel toUser() {
    return UserDataModel(
      displayName: displayName ?? '',
      email: email ?? '',
      emailVerified: emailVerified,
      isAnonymous: isAnonymous,
      phoneNumber: phoneNumber ?? '',
      photoURL: photoURL ?? '',
      refreshToken: refreshToken ?? '',
      tenantId: tenantId ?? '',
      uid: uid,
    );
  }
}
