import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:repositories/repositories.dart';
import 'package:services/services.dart';
import 'package:shared/shared.dart';

Future<void> initRepositories(GetIt getIt) async {
  getIt.registerFactory(() => AuthRepository(getIt.get<AuthService>()));
  getIt.registerFactory(
    () => FirestoreRepository(
      getIt.get<FirestoreService>(),
      getIt.get<AuthRepository>(),
      getIt.get<UpdateDateService>(),
      // getIt.get<FirebaseFirestore>(),
    ),
  );
}
