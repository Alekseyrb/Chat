import 'package:blocs/blocs.dart';
import 'package:chat/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetIt.I.get<LoginBloc>()),
        BlocProvider(create: (context) => GetIt.I.get<RegistrationBloc>()),
        BlocProvider(create: (context) => GetIt.I.get<HomeBloc>()..add(const HomeEvent.init())),
        BlocProvider(create: (context) => GetIt.I.get<ChatBloc>()),
        BlocProvider(create: (context) => GetIt.I.get<ProfileBloc>()..add(const ProfileEvent.init()),)
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    );
  }
}
