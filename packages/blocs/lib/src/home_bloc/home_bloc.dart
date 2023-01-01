import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FirestoreRepository firestoreRepository;

  HomeBloc(this.firestoreRepository) : super(const HomeState.loading()) {
    on<InitHomeEvent>(_init);
  }

  Future<void> _init(InitHomeEvent event, Emitter<HomeState> emit) async {
    final result = await firestoreRepository.getInfoFirestore(
      FirestoreConstants.pathUserCollection,
      20,
      '',
    );

    emit(HomeState.init(listUser: result));
  }
}
