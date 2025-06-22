part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.changeInfoType(InfoType type) = ChangeInfoType;

  const factory HomeEvent.toggleRandom() = ToggleRandom;

  const factory HomeEvent.updateNetworkStatus(bool isDisabled) =
      UpdateNetworkStatus;

  const factory HomeEvent.checkNetworkStatus() = CheckNetworkStatus;

  const factory HomeEvent.fetchNumberInfo(
    BuildContext context, {
    required String number,
    Function(CommonResponse)? onSuccess,
  }) = FetchNumberInfo;

  const factory HomeEvent.saveNumberInfo(
    BuildContext context,
    CommonResponse response,
  ) = SaveNumberInfo;
}
