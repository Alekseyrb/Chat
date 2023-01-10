import 'package:blocs/blocs.dart';
import 'package:get_it/get_it.dart';
import 'package:repositories/repositories.dart';
import 'package:services/services.dart';
import 'package:shared/shared_bootstraper.dart';

Future<void> setupIoc() async {
  final getIt = GetIt.I;
  await initShared(getIt);
  await initServices(getIt);
  await initRepositories(getIt);
  await initBloc(getIt);
}