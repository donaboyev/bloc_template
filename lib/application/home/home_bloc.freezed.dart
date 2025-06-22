// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// @nodoc


class ChangeInfoType implements HomeEvent {
  const ChangeInfoType(this.type);
  

 final  InfoType type;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeInfoTypeCopyWith<ChangeInfoType> get copyWith => _$ChangeInfoTypeCopyWithImpl<ChangeInfoType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeInfoType&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'HomeEvent.changeInfoType(type: $type)';
}


}

/// @nodoc
abstract mixin class $ChangeInfoTypeCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $ChangeInfoTypeCopyWith(ChangeInfoType value, $Res Function(ChangeInfoType) _then) = _$ChangeInfoTypeCopyWithImpl;
@useResult
$Res call({
 InfoType type
});




}
/// @nodoc
class _$ChangeInfoTypeCopyWithImpl<$Res>
    implements $ChangeInfoTypeCopyWith<$Res> {
  _$ChangeInfoTypeCopyWithImpl(this._self, this._then);

  final ChangeInfoType _self;
  final $Res Function(ChangeInfoType) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(ChangeInfoType(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as InfoType,
  ));
}


}

/// @nodoc


class ToggleRandom implements HomeEvent {
  const ToggleRandom();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleRandom);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.toggleRandom()';
}


}




/// @nodoc


class UpdateNetworkStatus implements HomeEvent {
  const UpdateNetworkStatus(this.isDisabled);
  

 final  bool isDisabled;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateNetworkStatusCopyWith<UpdateNetworkStatus> get copyWith => _$UpdateNetworkStatusCopyWithImpl<UpdateNetworkStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateNetworkStatus&&(identical(other.isDisabled, isDisabled) || other.isDisabled == isDisabled));
}


@override
int get hashCode => Object.hash(runtimeType,isDisabled);

@override
String toString() {
  return 'HomeEvent.updateNetworkStatus(isDisabled: $isDisabled)';
}


}

/// @nodoc
abstract mixin class $UpdateNetworkStatusCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $UpdateNetworkStatusCopyWith(UpdateNetworkStatus value, $Res Function(UpdateNetworkStatus) _then) = _$UpdateNetworkStatusCopyWithImpl;
@useResult
$Res call({
 bool isDisabled
});




}
/// @nodoc
class _$UpdateNetworkStatusCopyWithImpl<$Res>
    implements $UpdateNetworkStatusCopyWith<$Res> {
  _$UpdateNetworkStatusCopyWithImpl(this._self, this._then);

  final UpdateNetworkStatus _self;
  final $Res Function(UpdateNetworkStatus) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isDisabled = null,}) {
  return _then(UpdateNetworkStatus(
null == isDisabled ? _self.isDisabled : isDisabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class CheckNetworkStatus implements HomeEvent {
  const CheckNetworkStatus();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckNetworkStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.checkNetworkStatus()';
}


}




/// @nodoc


class FetchNumberInfo implements HomeEvent {
  const FetchNumberInfo(this.context, {required this.number, this.onSuccess});
  

 final  BuildContext context;
 final  String number;
 final   Function(CommonResponse)? onSuccess;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchNumberInfoCopyWith<FetchNumberInfo> get copyWith => _$FetchNumberInfoCopyWithImpl<FetchNumberInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchNumberInfo&&(identical(other.context, context) || other.context == context)&&(identical(other.number, number) || other.number == number)&&(identical(other.onSuccess, onSuccess) || other.onSuccess == onSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,context,number,onSuccess);

@override
String toString() {
  return 'HomeEvent.fetchNumberInfo(context: $context, number: $number, onSuccess: $onSuccess)';
}


}

/// @nodoc
abstract mixin class $FetchNumberInfoCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $FetchNumberInfoCopyWith(FetchNumberInfo value, $Res Function(FetchNumberInfo) _then) = _$FetchNumberInfoCopyWithImpl;
@useResult
$Res call({
 BuildContext context, String number,  Function(CommonResponse)? onSuccess
});




}
/// @nodoc
class _$FetchNumberInfoCopyWithImpl<$Res>
    implements $FetchNumberInfoCopyWith<$Res> {
  _$FetchNumberInfoCopyWithImpl(this._self, this._then);

  final FetchNumberInfo _self;
  final $Res Function(FetchNumberInfo) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? context = null,Object? number = null,Object? onSuccess = freezed,}) {
  return _then(FetchNumberInfo(
null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as BuildContext,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,onSuccess: freezed == onSuccess ? _self.onSuccess : onSuccess // ignore: cast_nullable_to_non_nullable
as  Function(CommonResponse)?,
  ));
}


}

/// @nodoc


class SaveNumberInfo implements HomeEvent {
  const SaveNumberInfo(this.context, this.response);
  

 final  BuildContext context;
 final  CommonResponse response;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveNumberInfoCopyWith<SaveNumberInfo> get copyWith => _$SaveNumberInfoCopyWithImpl<SaveNumberInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveNumberInfo&&(identical(other.context, context) || other.context == context)&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,context,response);

@override
String toString() {
  return 'HomeEvent.saveNumberInfo(context: $context, response: $response)';
}


}

/// @nodoc
abstract mixin class $SaveNumberInfoCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $SaveNumberInfoCopyWith(SaveNumberInfo value, $Res Function(SaveNumberInfo) _then) = _$SaveNumberInfoCopyWithImpl;
@useResult
$Res call({
 BuildContext context, CommonResponse response
});




}
/// @nodoc
class _$SaveNumberInfoCopyWithImpl<$Res>
    implements $SaveNumberInfoCopyWith<$Res> {
  _$SaveNumberInfoCopyWithImpl(this._self, this._then);

  final SaveNumberInfo _self;
  final $Res Function(SaveNumberInfo) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? context = null,Object? response = null,}) {
  return _then(SaveNumberInfo(
null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as BuildContext,null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as CommonResponse,
  ));
}


}

/// @nodoc
mixin _$HomeState {

 InfoType get infoType; bool get isRandom; bool get isNetworkDisabled; bool get isLoading; bool get isSaving;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.infoType, infoType) || other.infoType == infoType)&&(identical(other.isRandom, isRandom) || other.isRandom == isRandom)&&(identical(other.isNetworkDisabled, isNetworkDisabled) || other.isNetworkDisabled == isNetworkDisabled)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving));
}


@override
int get hashCode => Object.hash(runtimeType,infoType,isRandom,isNetworkDisabled,isLoading,isSaving);

@override
String toString() {
  return 'HomeState(infoType: $infoType, isRandom: $isRandom, isNetworkDisabled: $isNetworkDisabled, isLoading: $isLoading, isSaving: $isSaving)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 InfoType infoType, bool isRandom, bool isNetworkDisabled, bool isLoading, bool isSaving
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? infoType = null,Object? isRandom = null,Object? isNetworkDisabled = null,Object? isLoading = null,Object? isSaving = null,}) {
  return _then(_self.copyWith(
infoType: null == infoType ? _self.infoType : infoType // ignore: cast_nullable_to_non_nullable
as InfoType,isRandom: null == isRandom ? _self.isRandom : isRandom // ignore: cast_nullable_to_non_nullable
as bool,isNetworkDisabled: null == isNetworkDisabled ? _self.isNetworkDisabled : isNetworkDisabled // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _HomeStatee implements HomeState {
  const _HomeStatee({this.infoType = InfoType.math, this.isRandom = true, this.isNetworkDisabled = false, this.isLoading = false, this.isSaving = false});
  

@override@JsonKey() final  InfoType infoType;
@override@JsonKey() final  bool isRandom;
@override@JsonKey() final  bool isNetworkDisabled;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSaving;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateeCopyWith<_HomeStatee> get copyWith => __$HomeStateeCopyWithImpl<_HomeStatee>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeStatee&&(identical(other.infoType, infoType) || other.infoType == infoType)&&(identical(other.isRandom, isRandom) || other.isRandom == isRandom)&&(identical(other.isNetworkDisabled, isNetworkDisabled) || other.isNetworkDisabled == isNetworkDisabled)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving));
}


@override
int get hashCode => Object.hash(runtimeType,infoType,isRandom,isNetworkDisabled,isLoading,isSaving);

@override
String toString() {
  return 'HomeState(infoType: $infoType, isRandom: $isRandom, isNetworkDisabled: $isNetworkDisabled, isLoading: $isLoading, isSaving: $isSaving)';
}


}

/// @nodoc
abstract mixin class _$HomeStateeCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateeCopyWith(_HomeStatee value, $Res Function(_HomeStatee) _then) = __$HomeStateeCopyWithImpl;
@override @useResult
$Res call({
 InfoType infoType, bool isRandom, bool isNetworkDisabled, bool isLoading, bool isSaving
});




}
/// @nodoc
class __$HomeStateeCopyWithImpl<$Res>
    implements _$HomeStateeCopyWith<$Res> {
  __$HomeStateeCopyWithImpl(this._self, this._then);

  final _HomeStatee _self;
  final $Res Function(_HomeStatee) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? infoType = null,Object? isRandom = null,Object? isNetworkDisabled = null,Object? isLoading = null,Object? isSaving = null,}) {
  return _then(_HomeStatee(
infoType: null == infoType ? _self.infoType : infoType // ignore: cast_nullable_to_non_nullable
as InfoType,isRandom: null == isRandom ? _self.isRandom : isRandom // ignore: cast_nullable_to_non_nullable
as bool,isNetworkDisabled: null == isNetworkDisabled ? _self.isNetworkDisabled : isNetworkDisabled // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
