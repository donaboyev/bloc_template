import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/app_helpers.dart';
import '../../infrastructure/dependency_manager.dart';
import '../../infrastructure/info_type.dart';
import '../../domain/model/common_response.dart';

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

    on<FetchNumberInfo>((event, emit) async {
      final number = int.tryParse(event.number);
      if (number == null && !state.isRandom) {
        AppHelpers.errorToast(
          context: event.context,
          message: 'Number should be an integer',
        );
        return;
      }
      if (state.isLoading) return;
      emit(state.copyWith(isLoading: true));
      final res = await numbersRepository.fetchNumberInfo(
        type: state.infoType,
        number: state.isRandom ? null : number,
      );
      res.fold(
        (l) {
          emit(state.copyWith(isLoading: false));
          event.onSuccess?.call(l);
        },
        (r) {
          emit(state.copyWith(isLoading: false));
          AppHelpers.errorToast(context: event.context, message: r);
        },
      );
    });

    on<SaveNumberInfo>((event, emit) async {
      emit(state.copyWith(isSaving: true));
      final res = await numbersRepository.saveNumberInfo(event.response);
      res.fold(
        (success) {
          emit(state.copyWith(isSaving: false));
          AppHelpers.successToast(
            context: event.context,
            message: 'Number fact saved successfully',
          );
          Navigator.pop(event.context); // Close the dialog
        },
        (error) {
          emit(state.copyWith(isSaving: false));
          AppHelpers.errorToast(
            context: event.context,
            message: error,
          );
        },
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
