import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';

Future<void> initShared(GetIt getIt) async {
  getIt.registerFactory(() => UpdateDateService());
  getIt.registerFactory(() => FirestoreConstants());
}
