// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginScreenState {

 MensajeUI? get mensajeUi; EventoUI? get eventoUI;///
 String get aliasUsuario; String get contrasenia;
/// Create a copy of LoginScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginScreenStateCopyWith<LoginScreenState> get copyWith => _$LoginScreenStateCopyWithImpl<LoginScreenState>(this as LoginScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginScreenState&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI)&&(identical(other.aliasUsuario, aliasUsuario) || other.aliasUsuario == aliasUsuario)&&(identical(other.contrasenia, contrasenia) || other.contrasenia == contrasenia));
}


@override
int get hashCode => Object.hash(runtimeType,mensajeUi,eventoUI,aliasUsuario,contrasenia);

@override
String toString() {
  return 'LoginScreenState(mensajeUi: $mensajeUi, eventoUI: $eventoUI, aliasUsuario: $aliasUsuario, contrasenia: $contrasenia)';
}


}

/// @nodoc
abstract mixin class $LoginScreenStateCopyWith<$Res>  {
  factory $LoginScreenStateCopyWith(LoginScreenState value, $Res Function(LoginScreenState) _then) = _$LoginScreenStateCopyWithImpl;
@useResult
$Res call({
 MensajeUI? mensajeUi, EventoUI? eventoUI, String aliasUsuario, String contrasenia
});


$MensajeUICopyWith<$Res>? get mensajeUi;

}
/// @nodoc
class _$LoginScreenStateCopyWithImpl<$Res>
    implements $LoginScreenStateCopyWith<$Res> {
  _$LoginScreenStateCopyWithImpl(this._self, this._then);

  final LoginScreenState _self;
  final $Res Function(LoginScreenState) _then;

/// Create a copy of LoginScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mensajeUi = freezed,Object? eventoUI = freezed,Object? aliasUsuario = null,Object? contrasenia = null,}) {
  return _then(_self.copyWith(
mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as EventoUI?,aliasUsuario: null == aliasUsuario ? _self.aliasUsuario : aliasUsuario // ignore: cast_nullable_to_non_nullable
as String,contrasenia: null == contrasenia ? _self.contrasenia : contrasenia // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of LoginScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MensajeUICopyWith<$Res>? get mensajeUi {
    if (_self.mensajeUi == null) {
    return null;
  }

  return $MensajeUICopyWith<$Res>(_self.mensajeUi!, (value) {
    return _then(_self.copyWith(mensajeUi: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginScreenState].
extension LoginScreenStatePatterns on LoginScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginScreenState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginScreenState value)  $default,){
final _that = this;
switch (_that) {
case _LoginScreenState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginScreenState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MensajeUI? mensajeUi,  EventoUI? eventoUI,  String aliasUsuario,  String contrasenia)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginScreenState() when $default != null:
return $default(_that.mensajeUi,_that.eventoUI,_that.aliasUsuario,_that.contrasenia);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MensajeUI? mensajeUi,  EventoUI? eventoUI,  String aliasUsuario,  String contrasenia)  $default,) {final _that = this;
switch (_that) {
case _LoginScreenState():
return $default(_that.mensajeUi,_that.eventoUI,_that.aliasUsuario,_that.contrasenia);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MensajeUI? mensajeUi,  EventoUI? eventoUI,  String aliasUsuario,  String contrasenia)?  $default,) {final _that = this;
switch (_that) {
case _LoginScreenState() when $default != null:
return $default(_that.mensajeUi,_that.eventoUI,_that.aliasUsuario,_that.contrasenia);case _:
  return null;

}
}

}

/// @nodoc


class _LoginScreenState extends LoginScreenState {
  const _LoginScreenState({this.mensajeUi, this.eventoUI, this.aliasUsuario = "", this.contrasenia = ""}): super._();
  

@override final  MensajeUI? mensajeUi;
@override final  EventoUI? eventoUI;
///
@override@JsonKey() final  String aliasUsuario;
@override@JsonKey() final  String contrasenia;

/// Create a copy of LoginScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginScreenStateCopyWith<_LoginScreenState> get copyWith => __$LoginScreenStateCopyWithImpl<_LoginScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginScreenState&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI)&&(identical(other.aliasUsuario, aliasUsuario) || other.aliasUsuario == aliasUsuario)&&(identical(other.contrasenia, contrasenia) || other.contrasenia == contrasenia));
}


@override
int get hashCode => Object.hash(runtimeType,mensajeUi,eventoUI,aliasUsuario,contrasenia);

@override
String toString() {
  return 'LoginScreenState(mensajeUi: $mensajeUi, eventoUI: $eventoUI, aliasUsuario: $aliasUsuario, contrasenia: $contrasenia)';
}


}

/// @nodoc
abstract mixin class _$LoginScreenStateCopyWith<$Res> implements $LoginScreenStateCopyWith<$Res> {
  factory _$LoginScreenStateCopyWith(_LoginScreenState value, $Res Function(_LoginScreenState) _then) = __$LoginScreenStateCopyWithImpl;
@override @useResult
$Res call({
 MensajeUI? mensajeUi, EventoUI? eventoUI, String aliasUsuario, String contrasenia
});


@override $MensajeUICopyWith<$Res>? get mensajeUi;

}
/// @nodoc
class __$LoginScreenStateCopyWithImpl<$Res>
    implements _$LoginScreenStateCopyWith<$Res> {
  __$LoginScreenStateCopyWithImpl(this._self, this._then);

  final _LoginScreenState _self;
  final $Res Function(_LoginScreenState) _then;

/// Create a copy of LoginScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mensajeUi = freezed,Object? eventoUI = freezed,Object? aliasUsuario = null,Object? contrasenia = null,}) {
  return _then(_LoginScreenState(
mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as EventoUI?,aliasUsuario: null == aliasUsuario ? _self.aliasUsuario : aliasUsuario // ignore: cast_nullable_to_non_nullable
as String,contrasenia: null == contrasenia ? _self.contrasenia : contrasenia // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of LoginScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MensajeUICopyWith<$Res>? get mensajeUi {
    if (_self.mensajeUi == null) {
    return null;
  }

  return $MensajeUICopyWith<$Res>(_self.mensajeUi!, (value) {
    return _then(_self.copyWith(mensajeUi: value));
  });
}
}

// dart format on
