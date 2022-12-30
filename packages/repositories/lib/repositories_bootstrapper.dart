import 'package:get_it/get_it.dart';
import 'package:repositories/src/login/auth_repository.dart';
import 'package:services/services.dart';

Future<void> initRepositories(GetIt getIt) async {
  getIt.registerFactory(() => AuthRepository(getIt.get<AuthService>()));
}
