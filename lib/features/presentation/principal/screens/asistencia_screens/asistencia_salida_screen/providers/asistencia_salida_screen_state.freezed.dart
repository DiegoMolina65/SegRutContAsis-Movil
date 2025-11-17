// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asistencia_salida_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AsistenciaSalidaScreenState {

 MensajeUI? get mensajeUi; MensajeUI? get eventoUI;/// Campo del formulario
 int get venId;// Puedes dejar asiLatitud y asiLongitud, pero no se usan en la salida
 bool get isCargando;
/// Create a copy of AsistenciaSalidaScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AsistenciaSalidaScreenStateCopyWith<AsistenciaSalidaScreenState> get copyWith => _$AsistenciaSalidaScreenStateCopyWithImpl<AsistenciaSalidaScreenState>(this as AsistenciaSalidaScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AsistenciaSalidaScreenState&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI)&&(identical(other.venId, venId) || other.venId == venId)&&(identical(other.isCargando, isCargando) || other.isCargando == isCargando));
}


@override
int get hashCode => Object.hash(runtimeType,mensajeUi,eventoUI,venId,isCargando);

@override
String toString() {
  return 'AsistenciaSalidaScreenState(mensajeUi: $mensajeUi, eventoUI: $eventoUI, venId: $venId, isCargando: $isCargando)';
}


}

/// @nodoc
abstract mixin class $AsistenciaSalidaScreenStateCopyWith<$Res>  {
  factory $AsistenciaSalidaScreenStateCopyWith(AsistenciaSalidaScreenState value, $Res Function(AsistenciaSalidaScreenState) _then) = _$AsistenciaSalidaScreenStateCopyWithImpl;
@useResult
$Res call({
 MensajeUI? mensajeUi, MensajeUI? eventoUI, int venId, bool isCargando
});


$MensajeUICopyWith<$Res>? get mensajeUi;$MensajeUICopyWith<$Res>? get eventoUI;

}
/// @nodoc
class _$AsistenciaSalidaScreenStateCopyWithImpl<$Res>
    implements $AsistenciaSalidaScreenStateCopyWith<$Res> {
  _$AsistenciaSalidaScreenStateCopyWithImpl(this._self, this._then);

  final AsistenciaSalidaScreenState _self;
  final $Res Function(AsistenciaSalidaScreenState) _then;

/// Create a copy of AsistenciaSalidaScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mensajeUi = freezed,Object? eventoUI = freezed,Object? venId = null,Object? isCargando = null,}) {
  return _then(_self.copyWith(
mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as MensajeUI?,venId: null == venId ? _self.venId : venId // ignore: cast_nullable_to_non_nullable
as int,isCargando: null == isCargando ? _self.isCargando : isCargando // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of AsistenciaSalidaScreenState
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
}/// Create a copy of AsistenciaSalidaScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MensajeUICopyWith<$Res>? get eventoUI {
    if (_self.eventoUI == null) {
    return null;
  }

  return $MensajeUICopyWith<$Res>(_self.eventoUI!, (value) {
    return _then(_self.copyWith(eventoUI: value));
  });
}
}


/// Adds pattern-matching-related methods to [AsistenciaSalidaScreenState].
extension AsistenciaSalidaScreenStatePatterns on AsistenciaSalidaScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AsistenciaSalidaScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AsistenciaSalidaScreenState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AsistenciaSalidaScreenState value)  $default,){
final _that = this;
switch (_that) {
case _AsistenciaSalidaScreenState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AsistenciaSalidaScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _AsistenciaSalidaScreenState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MensajeUI? mensajeUi,  MensajeUI? eventoUI,  int venId,  bool isCargando)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AsistenciaSalidaScreenState() when $default != null:
return $default(_that.mensajeUi,_that.eventoUI,_that.venId,_that.isCargando);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MensajeUI? mensajeUi,  MensajeUI? eventoUI,  int venId,  bool isCargando)  $default,) {final _that = this;
switch (_that) {
case _AsistenciaSalidaScreenState():
return $default(_that.mensajeUi,_that.eventoUI,_that.venId,_that.isCargando);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MensajeUI? mensajeUi,  MensajeUI? eventoUI,  int venId,  bool isCargando)?  $default,) {final _that = this;
switch (_that) {
case _AsistenciaSalidaScreenState() when $default != null:
return $default(_that.mensajeUi,_that.eventoUI,_that.venId,_that.isCargando);case _:
  return null;

}
}

}

/// @nodoc


class _AsistenciaSalidaScreenState extends AsistenciaSalidaScreenState {
  const _AsistenciaSalidaScreenState({this.mensajeUi, this.eventoUI, this.venId = 0, this.isCargando = false}): super._();
  

@override final  MensajeUI? mensajeUi;
@override final  MensajeUI? eventoUI;
/// Campo del formulario
@override@JsonKey() final  int venId;
// Puedes dejar asiLatitud y asiLongitud, pero no se usan en la salida
@override@JsonKey() final  bool isCargando;

/// Create a copy of AsistenciaSalidaScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AsistenciaSalidaScreenStateCopyWith<_AsistenciaSalidaScreenState> get copyWith => __$AsistenciaSalidaScreenStateCopyWithImpl<_AsistenciaSalidaScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AsistenciaSalidaScreenState&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI)&&(identical(other.venId, venId) || other.venId == venId)&&(identical(other.isCargando, isCargando) || other.isCargando == isCargando));
}


@override
int get hashCode => Object.hash(runtimeType,mensajeUi,eventoUI,venId,isCargando);

@override
String toString() {
  return 'AsistenciaSalidaScreenState(mensajeUi: $mensajeUi, eventoUI: $eventoUI, venId: $venId, isCargando: $isCargando)';
}


}

/// @nodoc
abstract mixin class _$AsistenciaSalidaScreenStateCopyWith<$Res> implements $AsistenciaSalidaScreenStateCopyWith<$Res> {
  factory _$AsistenciaSalidaScreenStateCopyWith(_AsistenciaSalidaScreenState value, $Res Function(_AsistenciaSalidaScreenState) _then) = __$AsistenciaSalidaScreenStateCopyWithImpl;
@override @useResult
$Res call({
 MensajeUI? mensajeUi, MensajeUI? eventoUI, int venId, bool isCargando
});


@override $MensajeUICopyWith<$Res>? get mensajeUi;@override $MensajeUICopyWith<$Res>? get eventoUI;

}
/// @nodoc
class __$AsistenciaSalidaScreenStateCopyWithImpl<$Res>
    implements _$AsistenciaSalidaScreenStateCopyWith<$Res> {
  __$AsistenciaSalidaScreenStateCopyWithImpl(this._self, this._then);

  final _AsistenciaSalidaScreenState _self;
  final $Res Function(_AsistenciaSalidaScreenState) _then;

/// Create a copy of AsistenciaSalidaScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mensajeUi = freezed,Object? eventoUI = freezed,Object? venId = null,Object? isCargando = null,}) {
  return _then(_AsistenciaSalidaScreenState(
mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as MensajeUI?,venId: null == venId ? _self.venId : venId // ignore: cast_nullable_to_non_nullable
as int,isCargando: null == isCargando ? _self.isCargando : isCargando // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AsistenciaSalidaScreenState
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
}/// Create a copy of AsistenciaSalidaScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MensajeUICopyWith<$Res>? get eventoUI {
    if (_self.eventoUI == null) {
    return null;
  }

  return $MensajeUICopyWith<$Res>(_self.eventoUI!, (value) {
    return _then(_self.copyWith(eventoUI: value));
  });
}
}

// dart format on
