import 'package:blocs/src/login_bloc/login_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:repositories/repositories.dart';

Future<void> initBloc(GetIt getIt) async {
  getIt.registerSingleton(LoginBloc(getIt.get<AuthRepository>()));
}