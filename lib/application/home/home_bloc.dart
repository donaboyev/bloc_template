import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/info_type.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final Connectivity _connectivity = Connectivity();
  StreamSubscription? _connectivitySubscription;

  HomeBloc() : super(const HomeState()) {
    on<ChangeInfoType>((event, emit) {
      if (state.infoType == event.type) {
        return;
      }
      emit(state.copyWith(infoType: event.type));
    });

    on<ToggleRandom>((event, emit) {
      emit(state.copyWith(isRandom: !state.isRandom));
    });

    on<UpdateNetworkStatus>((event, emit) {
      emit(state.copyWith(isNetworkDisabled: event.isDisabled));
    });

    on<CheckNetworkStatus>((event, emit) async {
      final result = await _connectivity.checkConnectivity();
      emit(
        state.copyWith(
          isNetworkDisabled: result.contains(ConnectivityResult.none),
        ),
      );
    });

    _initConnectivity();
  }

  void _initConnectivity() {
    add(const HomeEvent.checkNetworkStatus());

    _connectivitySubscription = _connectivity.onConnectivityChanged.listen((
      result,
    ) {
      add(
        HomeEvent.updateNetworkStatus(result.contains(ConnectivityResult.none)),
      );
    });
  }

  @override
  Future<void> close() {
    _connectivitySubscription?.cancel();
    return super.close();
  }
}
