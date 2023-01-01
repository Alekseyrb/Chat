import 'package:get_it/get_it.dart';
import 'package:services/src/auth_service/auth_service.dart';

Future<void> initServices(GetIt getIt) async {
  getIt.registerFactory(() => AuthService());
}