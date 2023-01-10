import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';

Future<void> initServices(GetIt getIt) async {
  getIt.registerFactory(() => UpdateDateService());
  getIt.registerFactory(() => FirestoreConstants());
}
