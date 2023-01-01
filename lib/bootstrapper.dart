import 'package:blocs/blocs.dart';
import 'package:get_it/get_it.dart';
import 'package:repositories/repositories.dart';
import 'package:services/services.dart';

Future<void> setupIoc() async {
  final getIt = GetIt.I;
  await initServices(getIt);
  await initRepositories(getIt);
  await initBloc(getIt);
}