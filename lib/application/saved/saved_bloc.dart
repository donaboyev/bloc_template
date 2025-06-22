import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/number_info.dart';
import '../../infrastructure/dependency_manager.dart';

part 'saved_event.dart';
part 'saved_state.dart';
part 'saved_bloc.freezed.dart';

class SavedBloc extends Bloc<SavedEvent, SavedState> {
  SavedBloc() : super(const SavedState()) {
    on<LoadSavedNumberInfo>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await numbersRepository.getSavedNumberInfo();
      result.fold(
        (numberInfoList) {
          emit(state.copyWith(
            isLoading: false,
            savedNumberInfo: numberInfoList,
          ));
        },
        (error) {
          emit(state.copyWith(
            isLoading: false,
            error: error,
          ));
        },
      );
    });

    on<DeleteNumberInfo>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await numbersRepository.deleteNumberInfo(event.index);
      result.fold(
        (success) {
          add(const SavedEvent.loadSavedNumberInfo());
        },
        (error) {
          emit(state.copyWith(
            isLoading: false,
            error: error,
          ));
        },
      );
    });

    on<ClearAllNumberInfo>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await numbersRepository.clearAllNumberInfo();
      result.fold(
        (success) {
          emit(state.copyWith(
            isLoading: false,
            savedNumberInfo: [],
          ));
        },
        (error) {
          emit(state.copyWith(
            isLoading: false,
            error: error,
          ));
        },
      );
    });
  }
}