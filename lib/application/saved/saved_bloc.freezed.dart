// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SavedEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SavedEvent()';
}


}

/// @nodoc
class $SavedEventCopyWith<$Res>  {
$SavedEventCopyWith(SavedEvent _, $Res Function(SavedEvent) __);
}


/// @nodoc


class LoadSavedNumberInfo implements SavedEvent {
  const LoadSavedNumberInfo();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadSavedNumberInfo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SavedEvent.loadSavedNumberInfo()';
}


}




/// @nodoc


class DeleteNumberInfo implements SavedEvent {
  const DeleteNumberInfo(this.index);
  

 final  int index;

/// Create a copy of SavedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteNumberInfoCopyWith<DeleteNumberInfo> get copyWith => _$DeleteNumberInfoCopyWithImpl<DeleteNumberInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteNumberInfo&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'SavedEvent.deleteNumberInfo(index: $index)';
}


}

/// @nodoc
abstract mixin class $DeleteNumberInfoCopyWith<$Res> implements $SavedEventCopyWith<$Res> {
  factory $DeleteNumberInfoCopyWith(DeleteNumberInfo value, $Res Function(DeleteNumberInfo) _then) = _$DeleteNumberInfoCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$DeleteNumberInfoCopyWithImpl<$Res>
    implements $DeleteNumberInfoCopyWith<$Res> {
  _$DeleteNumberInfoCopyWithImpl(this._self, this._then);

  final DeleteNumberInfo _self;
  final $Res Function(DeleteNumberInfo) _then;

/// Create a copy of SavedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(DeleteNumberInfo(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ClearAllNumberInfo implements SavedEvent {
  const ClearAllNumberInfo();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearAllNumberInfo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SavedEvent.clearAllNumberInfo()';
}


}




/// @nodoc
mixin _$SavedState {

 List<NumberInfo> get savedNumberInfo; bool get isLoading; String? get error;
/// Create a copy of SavedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedStateCopyWith<SavedState> get copyWith => _$SavedStateCopyWithImpl<SavedState>(this as SavedState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedState&&const DeepCollectionEquality().equals(other.savedNumberInfo, savedNumberInfo)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(savedNumberInfo),isLoading,error);

@override
String toString() {
  return 'SavedState(savedNumberInfo: $savedNumberInfo, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $SavedStateCopyWith<$Res>  {
  factory $SavedStateCopyWith(SavedState value, $Res Function(SavedState) _then) = _$SavedStateCopyWithImpl;
@useResult
$Res call({
 List<NumberInfo> savedNumberInfo, bool isLoading, String? error
});




}
/// @nodoc
class _$SavedStateCopyWithImpl<$Res>
    implements $SavedStateCopyWith<$Res> {
  _$SavedStateCopyWithImpl(this._self, this._then);

  final SavedState _self;
  final $Res Function(SavedState) _then;

/// Create a copy of SavedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? savedNumberInfo = null,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
savedNumberInfo: null == savedNumberInfo ? _self.savedNumberInfo : savedNumberInfo // ignore: cast_nullable_to_non_nullable
as List<NumberInfo>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _SavedState implements SavedState {
  const _SavedState({final  List<NumberInfo> savedNumberInfo = const [], this.isLoading = false, this.error}): _savedNumberInfo = savedNumberInfo;
  

 final  List<NumberInfo> _savedNumberInfo;
@override@JsonKey() List<NumberInfo> get savedNumberInfo {
  if (_savedNumberInfo is EqualUnmodifiableListView) return _savedNumberInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_savedNumberInfo);
}

@override@JsonKey() final  bool isLoading;
@override final  String? error;

/// Create a copy of SavedState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedStateCopyWith<_SavedState> get copyWith => __$SavedStateCopyWithImpl<_SavedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedState&&const DeepCollectionEquality().equals(other._savedNumberInfo, _savedNumberInfo)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_savedNumberInfo),isLoading,error);

@override
String toString() {
  return 'SavedState(savedNumberInfo: $savedNumberInfo, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$SavedStateCopyWith<$Res> implements $SavedStateCopyWith<$Res> {
  factory _$SavedStateCopyWith(_SavedState value, $Res Function(_SavedState) _then) = __$SavedStateCopyWithImpl;
@override @useResult
$Res call({
 List<NumberInfo> savedNumberInfo, bool isLoading, String? error
});




}
/// @nodoc
class __$SavedStateCopyWithImpl<$Res>
    implements _$SavedStateCopyWith<$Res> {
  __$SavedStateCopyWithImpl(this._self, this._then);

  final _SavedState _self;
  final $Res Function(_SavedState) _then;

/// Create a copy of SavedState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? savedNumberInfo = null,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_SavedState(
savedNumberInfo: null == savedNumberInfo ? _self._savedNumberInfo : savedNumberInfo // ignore: cast_nullable_to_non_nullable
as List<NumberInfo>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
