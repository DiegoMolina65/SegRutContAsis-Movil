// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crear_evidencia_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CrearEvidenciaScreenState {

 MensajeUI? get mensajeUi; MensajeUI? get eventoUI;/// Campos del formulario
 int get visitaId; String get eviTipo; String get eviObservaciones; bool get isCargando;
/// Create a copy of CrearEvidenciaScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CrearEvidenciaScreenStateCopyWith<CrearEvidenciaScreenState> get copyWith => _$CrearEvidenciaScreenStateCopyWithImpl<CrearEvidenciaScreenState>(this as CrearEvidenciaScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CrearEvidenciaScreenState&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI)&&(identical(other.visitaId, visitaId) || other.visitaId == visitaId)&&(identical(other.eviTipo, eviTipo) || other.eviTipo == eviTipo)&&(identical(other.eviObservaciones, eviObservaciones) || other.eviObservaciones == eviObservaciones)&&(identical(other.isCargando, isCargando) || other.isCargando == isCargando));
}


@override
int get hashCode => Object.hash(runtimeType,mensajeUi,eventoUI,visitaId,eviTipo,eviObservaciones,isCargando);

@override
String toString() {
  return 'CrearEvidenciaScreenState(mensajeUi: $mensajeUi, eventoUI: $eventoUI, visitaId: $visitaId, eviTipo: $eviTipo, eviObservaciones: $eviObservaciones, isCargando: $isCargando)';
}


}

/// @nodoc
abstract mixin class $CrearEvidenciaScreenStateCopyWith<$Res>  {
  factory $CrearEvidenciaScreenStateCopyWith(CrearEvidenciaScreenState value, $Res Function(CrearEvidenciaScreenState) _then) = _$CrearEvidenciaScreenStateCopyWithImpl;
@useResult
$Res call({
 MensajeUI? mensajeUi, MensajeUI? eventoUI, int visitaId, String eviTipo, String eviObservaciones, bool isCargando
});


$MensajeUICopyWith<$Res>? get mensajeUi;$MensajeUICopyWith<$Res>? get eventoUI;

}
/// @nodoc
class _$CrearEvidenciaScreenStateCopyWithImpl<$Res>
    implements $CrearEvidenciaScreenStateCopyWith<$Res> {
  _$CrearEvidenciaScreenStateCopyWithImpl(this._self, this._then);

  final CrearEvidenciaScreenState _self;
  final $Res Function(CrearEvidenciaScreenState) _then;

/// Create a copy of CrearEvidenciaScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mensajeUi = freezed,Object? eventoUI = freezed,Object? visitaId = null,Object? eviTipo = null,Object? eviObservaciones = null,Object? isCargando = null,}) {
  return _then(_self.copyWith(
mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as MensajeUI?,visitaId: null == visitaId ? _self.visitaId : visitaId // ignore: cast_nullable_to_non_nullable
as int,eviTipo: null == eviTipo ? _self.eviTipo : eviTipo // ignore: cast_nullable_to_non_nullable
as String,eviObservaciones: null == eviObservaciones ? _self.eviObservaciones : eviObservaciones // ignore: cast_nullable_to_non_nullable
as String,isCargando: null == isCargando ? _self.isCargando : isCargando // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of CrearEvidenciaScreenState
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
}/// Create a copy of CrearEvidenciaScreenState
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


/// Adds pattern-matching-related methods to [CrearEvidenciaScreenState].
extension CrearEvidenciaScreenStatePatterns on CrearEvidenciaScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CrearEvidenciaScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CrearEvidenciaScreenState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CrearEvidenciaScreenState value)  $default,){
final _that = this;
switch (_that) {
case _CrearEvidenciaScreenState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CrearEvidenciaScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _CrearEvidenciaScreenState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MensajeUI? mensajeUi,  MensajeUI? eventoUI,  int visitaId,  String eviTipo,  String eviObservaciones,  bool isCargando)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CrearEvidenciaScreenState() when $default != null:
return $default(_that.mensajeUi,_that.eventoUI,_that.visitaId,_that.eviTipo,_that.eviObservaciones,_that.isCargando);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MensajeUI? mensajeUi,  MensajeUI? eventoUI,  int visitaId,  String eviTipo,  String eviObservaciones,  bool isCargando)  $default,) {final _that = this;
switch (_that) {
case _CrearEvidenciaScreenState():
return $default(_that.mensajeUi,_that.eventoUI,_that.visitaId,_that.eviTipo,_that.eviObservaciones,_that.isCargando);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MensajeUI? mensajeUi,  MensajeUI? eventoUI,  int visitaId,  String eviTipo,  String eviObservaciones,  bool isCargando)?  $default,) {final _that = this;
switch (_that) {
case _CrearEvidenciaScreenState() when $default != null:
return $default(_that.mensajeUi,_that.eventoUI,_that.visitaId,_that.eviTipo,_that.eviObservaciones,_that.isCargando);case _:
  return null;

}
}

}

/// @nodoc


class _CrearEvidenciaScreenState extends CrearEvidenciaScreenState {
  const _CrearEvidenciaScreenState({this.mensajeUi, this.eventoUI, this.visitaId = 0, this.eviTipo = "", this.eviObservaciones = "", this.isCargando = false}): super._();
  

@override final  MensajeUI? mensajeUi;
@override final  MensajeUI? eventoUI;
/// Campos del formulario
@override@JsonKey() final  int visitaId;
@override@JsonKey() final  String eviTipo;
@override@JsonKey() final  String eviObservaciones;
@override@JsonKey() final  bool isCargando;

/// Create a copy of CrearEvidenciaScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CrearEvidenciaScreenStateCopyWith<_CrearEvidenciaScreenState> get copyWith => __$CrearEvidenciaScreenStateCopyWithImpl<_CrearEvidenciaScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CrearEvidenciaScreenState&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI)&&(identical(other.visitaId, visitaId) || other.visitaId == visitaId)&&(identical(other.eviTipo, eviTipo) || other.eviTipo == eviTipo)&&(identical(other.eviObservaciones, eviObservaciones) || other.eviObservaciones == eviObservaciones)&&(identical(other.isCargando, isCargando) || other.isCargando == isCargando));
}


@override
int get hashCode => Object.hash(runtimeType,mensajeUi,eventoUI,visitaId,eviTipo,eviObservaciones,isCargando);

@override
String toString() {
  return 'CrearEvidenciaScreenState(mensajeUi: $mensajeUi, eventoUI: $eventoUI, visitaId: $visitaId, eviTipo: $eviTipo, eviObservaciones: $eviObservaciones, isCargando: $isCargando)';
}


}

/// @nodoc
abstract mixin class _$CrearEvidenciaScreenStateCopyWith<$Res> implements $CrearEvidenciaScreenStateCopyWith<$Res> {
  factory _$CrearEvidenciaScreenStateCopyWith(_CrearEvidenciaScreenState value, $Res Function(_CrearEvidenciaScreenState) _then) = __$CrearEvidenciaScreenStateCopyWithImpl;
@override @useResult
$Res call({
 MensajeUI? mensajeUi, MensajeUI? eventoUI, int visitaId, String eviTipo, String eviObservaciones, bool isCargando
});


@override $MensajeUICopyWith<$Res>? get mensajeUi;@override $MensajeUICopyWith<$Res>? get eventoUI;

}
/// @nodoc
class __$CrearEvidenciaScreenStateCopyWithImpl<$Res>
    implements _$CrearEvidenciaScreenStateCopyWith<$Res> {
  __$CrearEvidenciaScreenStateCopyWithImpl(this._self, this._then);

  final _CrearEvidenciaScreenState _self;
  final $Res Function(_CrearEvidenciaScreenState) _then;

/// Create a copy of CrearEvidenciaScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mensajeUi = freezed,Object? eventoUI = freezed,Object? visitaId = null,Object? eviTipo = null,Object? eviObservaciones = null,Object? isCargando = null,}) {
  return _then(_CrearEvidenciaScreenState(
mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as MensajeUI?,visitaId: null == visitaId ? _self.visitaId : visitaId // ignore: cast_nullable_to_non_nullable
as int,eviTipo: null == eviTipo ? _self.eviTipo : eviTipo // ignore: cast_nullable_to_non_nullable
as String,eviObservaciones: null == eviObservaciones ? _self.eviObservaciones : eviObservaciones // ignore: cast_nullable_to_non_nullable
as String,isCargando: null == isCargando ? _self.isCargando : isCargando // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of CrearEvidenciaScreenState
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
}/// Create a copy of CrearEvidenciaScreenState
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
