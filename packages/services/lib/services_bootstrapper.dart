import 'package:get_it/get_it.dart';
import 'package:services/src/auth_service/auth_service.dart';
import 'package:services/src/firestore_service/firestore_service.dart';
import 'package:shared/shared.dart';

Future<void> initServices(GetIt getIt) async {
  getIt.registerFactory(() => AuthService());

  getIt.registerFactory(() => FirestoreService(getIt.get<UpdateDateService>()));
}