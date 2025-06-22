part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(InfoType.math) InfoType infoType,
    @Default(true) bool isRandom,
    @Default(false) bool isNetworkDisabled,
  }) = _HomeStatee;
}
