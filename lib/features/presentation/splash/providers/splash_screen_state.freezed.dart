// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SplashScreenState {

 MensajeUI? get mensajeUi; EventoUI? get eventoUI;///
 String get mensajeCargando;
/// Create a copy of SplashScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplashScreenStateCopyWith<SplashScreenState> get copyWith => _$SplashScreenStateCopyWithImpl<SplashScreenState>(this as SplashScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashScreenState&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI)&&(identical(other.mensajeCargando, mensajeCargando) || other.mensajeCargando == mensajeCargando));
}


@override
int get hashCode => Object.hash(runtimeType,mensajeUi,eventoUI,mensajeCargando);

@override
String toString() {
  return 'SplashScreenState(mensajeUi: $mensajeUi, eventoUI: $eventoUI, mensajeCargando: $mensajeCargando)';
}


}

/// @nodoc
abstract mixin class $SplashScreenStateCopyWith<$Res>  {
  factory $SplashScreenStateCopyWith(SplashScreenState value, $Res Function(SplashScreenState) _then) = _$SplashScreenStateCopyWithImpl;
@useResult
$Res call({
 MensajeUI? mensajeUi, EventoUI? eventoUI, String mensajeCargando
});


$MensajeUICopyWith<$Res>? get mensajeUi;

}
/// @nodoc
class _$SplashScreenStateCopyWithImpl<$Res>
    implements $SplashScreenStateCopyWith<$Res> {
  _$SplashScreenStateCopyWithImpl(this._self, this._then);

  final SplashScreenState _self;
  final $Res Function(SplashScreenState) _then;

/// Create a copy of SplashScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mensajeUi = freezed,Object? eventoUI = freezed,Object? mensajeCargando = null,}) {
  return _then(_self.copyWith(
mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as EventoUI?,mensajeCargando: null == mensajeCargando ? _self.mensajeCargando : mensajeCargando // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of SplashScreenState
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


/// Adds pattern-matching-related methods to [SplashScreenState].
extension SplashScreenStatePatterns on SplashScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SplashScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SplashScreenState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SplashScreenState value)  $default,){
final _that = this;
switch (_that) {
case _SplashScreenState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SplashScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _SplashScreenState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MensajeUI? mensajeUi,  EventoUI? eventoUI,  String mensajeCargando)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SplashScreenState() when $default != null:
return $default(_that.mensajeUi,_that.eventoUI,_that.mensajeCargando);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MensajeUI? mensajeUi,  EventoUI? eventoUI,  String mensajeCargando)  $default,) {final _that = this;
switch (_that) {
case _SplashScreenState():
return $default(_that.mensajeUi,_that.eventoUI,_that.mensajeCargando);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MensajeUI? mensajeUi,  EventoUI? eventoUI,  String mensajeCargando)?  $default,) {final _that = this;
switch (_that) {
case _SplashScreenState() when $default != null:
return $default(_that.mensajeUi,_that.eventoUI,_that.mensajeCargando);case _:
  return null;

}
}

}

/// @nodoc


class _SplashScreenState implements SplashScreenState {
  const _SplashScreenState({this.mensajeUi, this.eventoUI, this.mensajeCargando = "Cargando..."});
  

@override final  MensajeUI? mensajeUi;
@override final  EventoUI? eventoUI;
///
@override@JsonKey() final  String mensajeCargando;

/// Create a copy of SplashScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SplashScreenStateCopyWith<_SplashScreenState> get copyWith => __$SplashScreenStateCopyWithImpl<_SplashScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SplashScreenState&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI)&&(identical(other.mensajeCargando, mensajeCargando) || other.mensajeCargando == mensajeCargando));
}


@override
int get hashCode => Object.hash(runtimeType,mensajeUi,eventoUI,mensajeCargando);

@override
String toString() {
  return 'SplashScreenState(mensajeUi: $mensajeUi, eventoUI: $eventoUI, mensajeCargando: $mensajeCargando)';
}


}

/// @nodoc
abstract mixin class _$SplashScreenStateCopyWith<$Res> implements $SplashScreenStateCopyWith<$Res> {
  factory _$SplashScreenStateCopyWith(_SplashScreenState value, $Res Function(_SplashScreenState) _then) = __$SplashScreenStateCopyWithImpl;
@override @useResult
$Res call({
 MensajeUI? mensajeUi, EventoUI? eventoUI, String mensajeCargando
});


@override $MensajeUICopyWith<$Res>? get mensajeUi;

}
/// @nodoc
class __$SplashScreenStateCopyWithImpl<$Res>
    implements _$SplashScreenStateCopyWith<$Res> {
  __$SplashScreenStateCopyWithImpl(this._self, this._then);

  final _SplashScreenState _self;
  final $Res Function(_SplashScreenState) _then;

/// Create a copy of SplashScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mensajeUi = freezed,Object? eventoUI = freezed,Object? mensajeCargando = null,}) {
  return _then(_SplashScreenState(
mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as EventoUI?,mensajeCargando: null == mensajeCargando ? _self.mensajeCargando : mensajeCargando // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of SplashScreenState
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
