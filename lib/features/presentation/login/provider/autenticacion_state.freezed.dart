// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autenticacion_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AutenticacionState {

 AutenticacionEstatus get autenticacionEstatus;
/// Create a copy of AutenticacionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AutenticacionStateCopyWith<AutenticacionState> get copyWith => _$AutenticacionStateCopyWithImpl<AutenticacionState>(this as AutenticacionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AutenticacionState&&(identical(other.autenticacionEstatus, autenticacionEstatus) || other.autenticacionEstatus == autenticacionEstatus));
}


@override
int get hashCode => Object.hash(runtimeType,autenticacionEstatus);

@override
String toString() {
  return 'AutenticacionState(autenticacionEstatus: $autenticacionEstatus)';
}


}

/// @nodoc
abstract mixin class $AutenticacionStateCopyWith<$Res>  {
  factory $AutenticacionStateCopyWith(AutenticacionState value, $Res Function(AutenticacionState) _then) = _$AutenticacionStateCopyWithImpl;
@useResult
$Res call({
 AutenticacionEstatus autenticacionEstatus
});




}
/// @nodoc
class _$AutenticacionStateCopyWithImpl<$Res>
    implements $AutenticacionStateCopyWith<$Res> {
  _$AutenticacionStateCopyWithImpl(this._self, this._then);

  final AutenticacionState _self;
  final $Res Function(AutenticacionState) _then;

/// Create a copy of AutenticacionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? autenticacionEstatus = null,}) {
  return _then(_self.copyWith(
autenticacionEstatus: null == autenticacionEstatus ? _self.autenticacionEstatus : autenticacionEstatus // ignore: cast_nullable_to_non_nullable
as AutenticacionEstatus,
  ));
}

}


/// Adds pattern-matching-related methods to [AutenticacionState].
extension AutenticacionStatePatterns on AutenticacionState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AutenticacionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AutenticacionState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AutenticacionState value)  $default,){
final _that = this;
switch (_that) {
case _AutenticacionState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AutenticacionState value)?  $default,){
final _that = this;
switch (_that) {
case _AutenticacionState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AutenticacionEstatus autenticacionEstatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AutenticacionState() when $default != null:
return $default(_that.autenticacionEstatus);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AutenticacionEstatus autenticacionEstatus)  $default,) {final _that = this;
switch (_that) {
case _AutenticacionState():
return $default(_that.autenticacionEstatus);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AutenticacionEstatus autenticacionEstatus)?  $default,) {final _that = this;
switch (_that) {
case _AutenticacionState() when $default != null:
return $default(_that.autenticacionEstatus);case _:
  return null;

}
}

}

/// @nodoc


class _AutenticacionState extends AutenticacionState {
  const _AutenticacionState({this.autenticacionEstatus = AutenticacionEstatus.verificando}): super._();
  

@override@JsonKey() final  AutenticacionEstatus autenticacionEstatus;

/// Create a copy of AutenticacionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AutenticacionStateCopyWith<_AutenticacionState> get copyWith => __$AutenticacionStateCopyWithImpl<_AutenticacionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AutenticacionState&&(identical(other.autenticacionEstatus, autenticacionEstatus) || other.autenticacionEstatus == autenticacionEstatus));
}


@override
int get hashCode => Object.hash(runtimeType,autenticacionEstatus);

@override
String toString() {
  return 'AutenticacionState(autenticacionEstatus: $autenticacionEstatus)';
}


}

/// @nodoc
abstract mixin class _$AutenticacionStateCopyWith<$Res> implements $AutenticacionStateCopyWith<$Res> {
  factory _$AutenticacionStateCopyWith(_AutenticacionState value, $Res Function(_AutenticacionState) _then) = __$AutenticacionStateCopyWithImpl;
@override @useResult
$Res call({
 AutenticacionEstatus autenticacionEstatus
});




}
/// @nodoc
class __$AutenticacionStateCopyWithImpl<$Res>
    implements _$AutenticacionStateCopyWith<$Res> {
  __$AutenticacionStateCopyWithImpl(this._self, this._then);

  final _AutenticacionState _self;
  final $Res Function(_AutenticacionState) _then;

/// Create a copy of AutenticacionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? autenticacionEstatus = null,}) {
  return _then(_AutenticacionState(
autenticacionEstatus: null == autenticacionEstatus ? _self.autenticacionEstatus : autenticacionEstatus // ignore: cast_nullable_to_non_nullable
as AutenticacionEstatus,
  ));
}


}

// dart format on
