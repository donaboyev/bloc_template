part of 'saved_bloc.dart';

@freezed
abstract class SavedState with _$SavedState {
  const factory SavedState({
    @Default([]) List<NumberInfo> savedNumberInfo,
    @Default(false) bool isLoading,
    String? error,
  }) = _SavedState;
}