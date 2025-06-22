part of 'saved_bloc.dart';

@freezed
abstract class SavedEvent with _$SavedEvent {
  const factory SavedEvent.loadSavedNumberInfo() = LoadSavedNumberInfo;
  
  const factory SavedEvent.deleteNumberInfo(int index) = DeleteNumberInfo;
  
  const factory SavedEvent.clearAllNumberInfo() = ClearAllNumberInfo;
}