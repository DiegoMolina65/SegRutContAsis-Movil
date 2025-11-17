// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crear_cliente_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CrearClienteScreenState {

 MensajeUI? get mensajeUi; MensajeUI? get eventoUI;/// Campos del formulario
 String get clNombreCompleto; String get clCarnetIdentidad; String get clNitCliente; String get clTipoCliente; String get clTelefono; bool get isCargando;
/// Create a copy of CrearClienteScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CrearClienteScreenStateCopyWith<CrearClienteScreenState> get copyWith => _$CrearClienteScreenStateCopyWithImpl<CrearClienteScreenState>(this as CrearClienteScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CrearClienteScreenState&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI)&&(identical(other.clNombreCompleto, clNombreCompleto) || other.clNombreCompleto == clNombreCompleto)&&(identical(other.clCarnetIdentidad, clCarnetIdentidad) || other.clCarnetIdentidad == clCarnetIdentidad)&&(identical(other.clNitCliente, clNitCliente) || other.clNitCliente == clNitCliente)&&(identical(other.clTipoCliente, clTipoCliente) || other.clTipoCliente == clTipoCliente)&&(identical(other.clTelefono, clTelefono) || other.clTelefono == clTelefono)&&(identical(other.isCargando, isCargando) || other.isCargando == isCargando));
}


@override
int get hashCode => Object.hash(runtimeType,mensajeUi,eventoUI,clNombreCompleto,clCarnetIdentidad,clNitCliente,clTipoCliente,clTelefono,isCargando);

@override
String toString() {
  return 'CrearClienteScreenState(mensajeUi: $mensajeUi, eventoUI: $eventoUI, clNombreCompleto: $clNombreCompleto, clCarnetIdentidad: $clCarnetIdentidad, clNitCliente: $clNitCliente, clTipoCliente: $clTipoCliente, clTelefono: $clTelefono, isCargando: $isCargando)';
}


}

/// @nodoc
abstract mixin class $CrearClienteScreenStateCopyWith<$Res>  {
  factory $CrearClienteScreenStateCopyWith(CrearClienteScreenState value, $Res Function(CrearClienteScreenState) _then) = _$CrearClienteScreenStateCopyWithImpl;
@useResult
$Res call({
 MensajeUI? mensajeUi, MensajeUI? eventoUI, String clNombreCompleto, String clCarnetIdentidad, String clNitCliente, String clTipoCliente, String clTelefono, bool isCargando
});


$MensajeUICopyWith<$Res>? get mensajeUi;$MensajeUICopyWith<$Res>? get eventoUI;

}
/// @nodoc
class _$CrearClienteScreenStateCopyWithImpl<$Res>
    implements $CrearClienteScreenStateCopyWith<$Res> {
  _$CrearClienteScreenStateCopyWithImpl(this._self, this._then);

  final CrearClienteScreenState _self;
  final $Res Function(CrearClienteScreenState) _then;

/// Create a copy of CrearClienteScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mensajeUi = freezed,Object? eventoUI = freezed,Object? clNombreCompleto = null,Object? clCarnetIdentidad = null,Object? clNitCliente = null,Object? clTipoCliente = null,Object? clTelefono = null,Object? isCargando = null,}) {
  return _then(_self.copyWith(
mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as MensajeUI?,clNombreCompleto: null == clNombreCompleto ? _self.clNombreCompleto : clNombreCompleto // ignore: cast_nullable_to_non_nullable
as String,clCarnetIdentidad: null == clCarnetIdentidad ? _self.clCarnetIdentidad : clCarnetIdentidad // ignore: cast_nullable_to_non_nullable
as String,clNitCliente: null == clNitCliente ? _self.clNitCliente : clNitCliente // ignore: cast_nullable_to_non_nullable
as String,clTipoCliente: null == clTipoCliente ? _self.clTipoCliente : clTipoCliente // ignore: cast_nullable_to_non_nullable
as String,clTelefono: null == clTelefono ? _self.clTelefono : clTelefono // ignore: cast_nullable_to_non_nullable
as String,isCargando: null == isCargando ? _self.isCargando : isCargando // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of CrearClienteScreenState
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
}/// Create a copy of CrearClienteScreenState
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


/// Adds pattern-matching-related methods to [CrearClienteScreenState].
extension CrearClienteScreenStatePatterns on CrearClienteScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CrearClienteScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CrearClienteScreenState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CrearClienteScreenState value)  $default,){
final _that = this;
switch (_that) {
case _CrearClienteScreenState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CrearClienteScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _CrearClienteScreenState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MensajeUI? mensajeUi,  MensajeUI? eventoUI,  String clNombreCompleto,  String clCarnetIdentidad,  String clNitCliente,  String clTipoCliente,  String clTelefono,  bool isCargando)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CrearClienteScreenState() when $default != null:
return $default(_that.mensajeUi,_that.eventoUI,_that.clNombreCompleto,_that.clCarnetIdentidad,_that.clNitCliente,_that.clTipoCliente,_that.clTelefono,_that.isCargando);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MensajeUI? mensajeUi,  MensajeUI? eventoUI,  String clNombreCompleto,  String clCarnetIdentidad,  String clNitCliente,  String clTipoCliente,  String clTelefono,  bool isCargando)  $default,) {final _that = this;
switch (_that) {
case _CrearClienteScreenState():
return $default(_that.mensajeUi,_that.eventoUI,_that.clNombreCompleto,_that.clCarnetIdentidad,_that.clNitCliente,_that.clTipoCliente,_that.clTelefono,_that.isCargando);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MensajeUI? mensajeUi,  MensajeUI? eventoUI,  String clNombreCompleto,  String clCarnetIdentidad,  String clNitCliente,  String clTipoCliente,  String clTelefono,  bool isCargando)?  $default,) {final _that = this;
switch (_that) {
case _CrearClienteScreenState() when $default != null:
return $default(_that.mensajeUi,_that.eventoUI,_that.clNombreCompleto,_that.clCarnetIdentidad,_that.clNitCliente,_that.clTipoCliente,_that.clTelefono,_that.isCargando);case _:
  return null;

}
}

}

/// @nodoc


class _CrearClienteScreenState extends CrearClienteScreenState {
  const _CrearClienteScreenState({this.mensajeUi, this.eventoUI, this.clNombreCompleto = "", this.clCarnetIdentidad = "", this.clNitCliente = "", this.clTipoCliente = "", this.clTelefono = "", this.isCargando = false}): super._();
  

@override final  MensajeUI? mensajeUi;
@override final  MensajeUI? eventoUI;
/// Campos del formulario
@override@JsonKey() final  String clNombreCompleto;
@override@JsonKey() final  String clCarnetIdentidad;
@override@JsonKey() final  String clNitCliente;
@override@JsonKey() final  String clTipoCliente;
@override@JsonKey() final  String clTelefono;
@override@JsonKey() final  bool isCargando;

/// Create a copy of CrearClienteScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CrearClienteScreenStateCopyWith<_CrearClienteScreenState> get copyWith => __$CrearClienteScreenStateCopyWithImpl<_CrearClienteScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CrearClienteScreenState&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI)&&(identical(other.clNombreCompleto, clNombreCompleto) || other.clNombreCompleto == clNombreCompleto)&&(identical(other.clCarnetIdentidad, clCarnetIdentidad) || other.clCarnetIdentidad == clCarnetIdentidad)&&(identical(other.clNitCliente, clNitCliente) || other.clNitCliente == clNitCliente)&&(identical(other.clTipoCliente, clTipoCliente) || other.clTipoCliente == clTipoCliente)&&(identical(other.clTelefono, clTelefono) || other.clTelefono == clTelefono)&&(identical(other.isCargando, isCargando) || other.isCargando == isCargando));
}


@override
int get hashCode => Object.hash(runtimeType,mensajeUi,eventoUI,clNombreCompleto,clCarnetIdentidad,clNitCliente,clTipoCliente,clTelefono,isCargando);

@override
String toString() {
  return 'CrearClienteScreenState(mensajeUi: $mensajeUi, eventoUI: $eventoUI, clNombreCompleto: $clNombreCompleto, clCarnetIdentidad: $clCarnetIdentidad, clNitCliente: $clNitCliente, clTipoCliente: $clTipoCliente, clTelefono: $clTelefono, isCargando: $isCargando)';
}


}

/// @nodoc
abstract mixin class _$CrearClienteScreenStateCopyWith<$Res> implements $CrearClienteScreenStateCopyWith<$Res> {
  factory _$CrearClienteScreenStateCopyWith(_CrearClienteScreenState value, $Res Function(_CrearClienteScreenState) _then) = __$CrearClienteScreenStateCopyWithImpl;
@override @useResult
$Res call({
 MensajeUI? mensajeUi, MensajeUI? eventoUI, String clNombreCompleto, String clCarnetIdentidad, String clNitCliente, String clTipoCliente, String clTelefono, bool isCargando
});


@override $MensajeUICopyWith<$Res>? get mensajeUi;@override $MensajeUICopyWith<$Res>? get eventoUI;

}
/// @nodoc
class __$CrearClienteScreenStateCopyWithImpl<$Res>
    implements _$CrearClienteScreenStateCopyWith<$Res> {
  __$CrearClienteScreenStateCopyWithImpl(this._self, this._then);

  final _CrearClienteScreenState _self;
  final $Res Function(_CrearClienteScreenState) _then;

/// Create a copy of CrearClienteScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mensajeUi = freezed,Object? eventoUI = freezed,Object? clNombreCompleto = null,Object? clCarnetIdentidad = null,Object? clNitCliente = null,Object? clTipoCliente = null,Object? clTelefono = null,Object? isCargando = null,}) {
  return _then(_CrearClienteScreenState(
mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as MensajeUI?,clNombreCompleto: null == clNombreCompleto ? _self.clNombreCompleto : clNombreCompleto // ignore: cast_nullable_to_non_nullable
as String,clCarnetIdentidad: null == clCarnetIdentidad ? _self.clCarnetIdentidad : clCarnetIdentidad // ignore: cast_nullable_to_non_nullable
as String,clNitCliente: null == clNitCliente ? _self.clNitCliente : clNitCliente // ignore: cast_nullable_to_non_nullable
as String,clTipoCliente: null == clTipoCliente ? _self.clTipoCliente : clTipoCliente // ignore: cast_nullable_to_non_nullable
as String,clTelefono: null == clTelefono ? _self.clTelefono : clTelefono // ignore: cast_nullable_to_non_nullable
as String,isCargando: null == isCargando ? _self.isCargando : isCargando // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of CrearClienteScreenState
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
}/// Create a copy of CrearClienteScreenState
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
