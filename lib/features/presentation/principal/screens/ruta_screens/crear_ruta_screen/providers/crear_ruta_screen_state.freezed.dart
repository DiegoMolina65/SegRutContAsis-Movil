// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crear_ruta_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CrearRutaScreenState {

 MensajeUI? get mensajeUi; MensajeUI? get eventoUI;/// Campos del formulario
 int get venId; int get supId; String get rutNombre; String get rutComentario; DateTime? get rutFechaEjecucion; bool get isCargando;
/// Create a copy of CrearRutaScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CrearRutaScreenStateCopyWith<CrearRutaScreenState> get copyWith => _$CrearRutaScreenStateCopyWithImpl<CrearRutaScreenState>(this as CrearRutaScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CrearRutaScreenState&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI)&&(identical(other.venId, venId) || other.venId == venId)&&(identical(other.supId, supId) || other.supId == supId)&&(identical(other.rutNombre, rutNombre) || other.rutNombre == rutNombre)&&(identical(other.rutComentario, rutComentario) || other.rutComentario == rutComentario)&&(identical(other.rutFechaEjecucion, rutFechaEjecucion) || other.rutFechaEjecucion == rutFechaEjecucion)&&(identical(other.isCargando, isCargando) || other.isCargando == isCargando));
}


@override
int get hashCode => Object.hash(runtimeType,mensajeUi,eventoUI,venId,supId,rutNombre,rutComentario,rutFechaEjecucion,isCargando);

@override
String toString() {
  return 'CrearRutaScreenState(mensajeUi: $mensajeUi, eventoUI: $eventoUI, venId: $venId, supId: $supId, rutNombre: $rutNombre, rutComentario: $rutComentario, rutFechaEjecucion: $rutFechaEjecucion, isCargando: $isCargando)';
}


}

/// @nodoc
abstract mixin class $CrearRutaScreenStateCopyWith<$Res>  {
  factory $CrearRutaScreenStateCopyWith(CrearRutaScreenState value, $Res Function(CrearRutaScreenState) _then) = _$CrearRutaScreenStateCopyWithImpl;
@useResult
$Res call({
 MensajeUI? mensajeUi, MensajeUI? eventoUI, int venId, int supId, String rutNombre, String rutComentario, DateTime? rutFechaEjecucion, bool isCargando
});


$MensajeUICopyWith<$Res>? get mensajeUi;$MensajeUICopyWith<$Res>? get eventoUI;

}
/// @nodoc
class _$CrearRutaScreenStateCopyWithImpl<$Res>
    implements $CrearRutaScreenStateCopyWith<$Res> {
  _$CrearRutaScreenStateCopyWithImpl(this._self, this._then);

  final CrearRutaScreenState _self;
  final $Res Function(CrearRutaScreenState) _then;

/// Create a copy of CrearRutaScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mensajeUi = freezed,Object? eventoUI = freezed,Object? venId = null,Object? supId = null,Object? rutNombre = null,Object? rutComentario = null,Object? rutFechaEjecucion = freezed,Object? isCargando = null,}) {
  return _then(_self.copyWith(
mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as MensajeUI?,venId: null == venId ? _self.venId : venId // ignore: cast_nullable_to_non_nullable
as int,supId: null == supId ? _self.supId : supId // ignore: cast_nullable_to_non_nullable
as int,rutNombre: null == rutNombre ? _self.rutNombre : rutNombre // ignore: cast_nullable_to_non_nullable
as String,rutComentario: null == rutComentario ? _self.rutComentario : rutComentario // ignore: cast_nullable_to_non_nullable
as String,rutFechaEjecucion: freezed == rutFechaEjecucion ? _self.rutFechaEjecucion : rutFechaEjecucion // ignore: cast_nullable_to_non_nullable
as DateTime?,isCargando: null == isCargando ? _self.isCargando : isCargando // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of CrearRutaScreenState
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
}/// Create a copy of CrearRutaScreenState
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


/// Adds pattern-matching-related methods to [CrearRutaScreenState].
extension CrearRutaScreenStatePatterns on CrearRutaScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CrearRutaScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CrearRutaScreenState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CrearRutaScreenState value)  $default,){
final _that = this;
switch (_that) {
case _CrearRutaScreenState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CrearRutaScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _CrearRutaScreenState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MensajeUI? mensajeUi,  MensajeUI? eventoUI,  int venId,  int supId,  String rutNombre,  String rutComentario,  DateTime? rutFechaEjecucion,  bool isCargando)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CrearRutaScreenState() when $default != null:
return $default(_that.mensajeUi,_that.eventoUI,_that.venId,_that.supId,_that.rutNombre,_that.rutComentario,_that.rutFechaEjecucion,_that.isCargando);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MensajeUI? mensajeUi,  MensajeUI? eventoUI,  int venId,  int supId,  String rutNombre,  String rutComentario,  DateTime? rutFechaEjecucion,  bool isCargando)  $default,) {final _that = this;
switch (_that) {
case _CrearRutaScreenState():
return $default(_that.mensajeUi,_that.eventoUI,_that.venId,_that.supId,_that.rutNombre,_that.rutComentario,_that.rutFechaEjecucion,_that.isCargando);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MensajeUI? mensajeUi,  MensajeUI? eventoUI,  int venId,  int supId,  String rutNombre,  String rutComentario,  DateTime? rutFechaEjecucion,  bool isCargando)?  $default,) {final _that = this;
switch (_that) {
case _CrearRutaScreenState() when $default != null:
return $default(_that.mensajeUi,_that.eventoUI,_that.venId,_that.supId,_that.rutNombre,_that.rutComentario,_that.rutFechaEjecucion,_that.isCargando);case _:
  return null;

}
}

}

/// @nodoc


class _CrearRutaScreenState extends CrearRutaScreenState {
  const _CrearRutaScreenState({this.mensajeUi, this.eventoUI, this.venId = 0, this.supId = 0, this.rutNombre = "", this.rutComentario = "", this.rutFechaEjecucion, this.isCargando = false}): super._();
  

@override final  MensajeUI? mensajeUi;
@override final  MensajeUI? eventoUI;
/// Campos del formulario
@override@JsonKey() final  int venId;
@override@JsonKey() final  int supId;
@override@JsonKey() final  String rutNombre;
@override@JsonKey() final  String rutComentario;
@override final  DateTime? rutFechaEjecucion;
@override@JsonKey() final  bool isCargando;

/// Create a copy of CrearRutaScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CrearRutaScreenStateCopyWith<_CrearRutaScreenState> get copyWith => __$CrearRutaScreenStateCopyWithImpl<_CrearRutaScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CrearRutaScreenState&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI)&&(identical(other.venId, venId) || other.venId == venId)&&(identical(other.supId, supId) || other.supId == supId)&&(identical(other.rutNombre, rutNombre) || other.rutNombre == rutNombre)&&(identical(other.rutComentario, rutComentario) || other.rutComentario == rutComentario)&&(identical(other.rutFechaEjecucion, rutFechaEjecucion) || other.rutFechaEjecucion == rutFechaEjecucion)&&(identical(other.isCargando, isCargando) || other.isCargando == isCargando));
}


@override
int get hashCode => Object.hash(runtimeType,mensajeUi,eventoUI,venId,supId,rutNombre,rutComentario,rutFechaEjecucion,isCargando);

@override
String toString() {
  return 'CrearRutaScreenState(mensajeUi: $mensajeUi, eventoUI: $eventoUI, venId: $venId, supId: $supId, rutNombre: $rutNombre, rutComentario: $rutComentario, rutFechaEjecucion: $rutFechaEjecucion, isCargando: $isCargando)';
}


}

/// @nodoc
abstract mixin class _$CrearRutaScreenStateCopyWith<$Res> implements $CrearRutaScreenStateCopyWith<$Res> {
  factory _$CrearRutaScreenStateCopyWith(_CrearRutaScreenState value, $Res Function(_CrearRutaScreenState) _then) = __$CrearRutaScreenStateCopyWithImpl;
@override @useResult
$Res call({
 MensajeUI? mensajeUi, MensajeUI? eventoUI, int venId, int supId, String rutNombre, String rutComentario, DateTime? rutFechaEjecucion, bool isCargando
});


@override $MensajeUICopyWith<$Res>? get mensajeUi;@override $MensajeUICopyWith<$Res>? get eventoUI;

}
/// @nodoc
class __$CrearRutaScreenStateCopyWithImpl<$Res>
    implements _$CrearRutaScreenStateCopyWith<$Res> {
  __$CrearRutaScreenStateCopyWithImpl(this._self, this._then);

  final _CrearRutaScreenState _self;
  final $Res Function(_CrearRutaScreenState) _then;

/// Create a copy of CrearRutaScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mensajeUi = freezed,Object? eventoUI = freezed,Object? venId = null,Object? supId = null,Object? rutNombre = null,Object? rutComentario = null,Object? rutFechaEjecucion = freezed,Object? isCargando = null,}) {
  return _then(_CrearRutaScreenState(
mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as MensajeUI?,venId: null == venId ? _self.venId : venId // ignore: cast_nullable_to_non_nullable
as int,supId: null == supId ? _self.supId : supId // ignore: cast_nullable_to_non_nullable
as int,rutNombre: null == rutNombre ? _self.rutNombre : rutNombre // ignore: cast_nullable_to_non_nullable
as String,rutComentario: null == rutComentario ? _self.rutComentario : rutComentario // ignore: cast_nullable_to_non_nullable
as String,rutFechaEjecucion: freezed == rutFechaEjecucion ? _self.rutFechaEjecucion : rutFechaEjecucion // ignore: cast_nullable_to_non_nullable
as DateTime?,isCargando: null == isCargando ? _self.isCargando : isCargando // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of CrearRutaScreenState
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
}/// Create a copy of CrearRutaScreenState
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
