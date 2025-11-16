// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marcar_llegada_visita.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MarcarLlegadaVisita {

 int get mlvId; int get visId; Duration? get mlvHora; double get mlvLatitud; double get mlvLongitud; bool get mlvEstadoDel; String get mlvFechaCreacion; String? get nombreCliente; String? get nombreSucursalCliente; String? get sucursalLatitud; String? get sucursalLongitud; String? get nombreVendedor; String? get usuarioLogVendedor; String? get telefonoVendedor;
/// Create a copy of MarcarLlegadaVisita
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarcarLlegadaVisitaCopyWith<MarcarLlegadaVisita> get copyWith => _$MarcarLlegadaVisitaCopyWithImpl<MarcarLlegadaVisita>(this as MarcarLlegadaVisita, _$identity);

  /// Serializes this MarcarLlegadaVisita to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarcarLlegadaVisita&&(identical(other.mlvId, mlvId) || other.mlvId == mlvId)&&(identical(other.visId, visId) || other.visId == visId)&&(identical(other.mlvHora, mlvHora) || other.mlvHora == mlvHora)&&(identical(other.mlvLatitud, mlvLatitud) || other.mlvLatitud == mlvLatitud)&&(identical(other.mlvLongitud, mlvLongitud) || other.mlvLongitud == mlvLongitud)&&(identical(other.mlvEstadoDel, mlvEstadoDel) || other.mlvEstadoDel == mlvEstadoDel)&&(identical(other.mlvFechaCreacion, mlvFechaCreacion) || other.mlvFechaCreacion == mlvFechaCreacion)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente)&&(identical(other.nombreSucursalCliente, nombreSucursalCliente) || other.nombreSucursalCliente == nombreSucursalCliente)&&(identical(other.sucursalLatitud, sucursalLatitud) || other.sucursalLatitud == sucursalLatitud)&&(identical(other.sucursalLongitud, sucursalLongitud) || other.sucursalLongitud == sucursalLongitud)&&(identical(other.nombreVendedor, nombreVendedor) || other.nombreVendedor == nombreVendedor)&&(identical(other.usuarioLogVendedor, usuarioLogVendedor) || other.usuarioLogVendedor == usuarioLogVendedor)&&(identical(other.telefonoVendedor, telefonoVendedor) || other.telefonoVendedor == telefonoVendedor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mlvId,visId,mlvHora,mlvLatitud,mlvLongitud,mlvEstadoDel,mlvFechaCreacion,nombreCliente,nombreSucursalCliente,sucursalLatitud,sucursalLongitud,nombreVendedor,usuarioLogVendedor,telefonoVendedor);

@override
String toString() {
  return 'MarcarLlegadaVisita(mlvId: $mlvId, visId: $visId, mlvHora: $mlvHora, mlvLatitud: $mlvLatitud, mlvLongitud: $mlvLongitud, mlvEstadoDel: $mlvEstadoDel, mlvFechaCreacion: $mlvFechaCreacion, nombreCliente: $nombreCliente, nombreSucursalCliente: $nombreSucursalCliente, sucursalLatitud: $sucursalLatitud, sucursalLongitud: $sucursalLongitud, nombreVendedor: $nombreVendedor, usuarioLogVendedor: $usuarioLogVendedor, telefonoVendedor: $telefonoVendedor)';
}


}

/// @nodoc
abstract mixin class $MarcarLlegadaVisitaCopyWith<$Res>  {
  factory $MarcarLlegadaVisitaCopyWith(MarcarLlegadaVisita value, $Res Function(MarcarLlegadaVisita) _then) = _$MarcarLlegadaVisitaCopyWithImpl;
@useResult
$Res call({
 int mlvId, int visId, Duration? mlvHora, double mlvLatitud, double mlvLongitud, bool mlvEstadoDel, String mlvFechaCreacion, String? nombreCliente, String? nombreSucursalCliente, String? sucursalLatitud, String? sucursalLongitud, String? nombreVendedor, String? usuarioLogVendedor, String? telefonoVendedor
});




}
/// @nodoc
class _$MarcarLlegadaVisitaCopyWithImpl<$Res>
    implements $MarcarLlegadaVisitaCopyWith<$Res> {
  _$MarcarLlegadaVisitaCopyWithImpl(this._self, this._then);

  final MarcarLlegadaVisita _self;
  final $Res Function(MarcarLlegadaVisita) _then;

/// Create a copy of MarcarLlegadaVisita
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mlvId = null,Object? visId = null,Object? mlvHora = freezed,Object? mlvLatitud = null,Object? mlvLongitud = null,Object? mlvEstadoDel = null,Object? mlvFechaCreacion = null,Object? nombreCliente = freezed,Object? nombreSucursalCliente = freezed,Object? sucursalLatitud = freezed,Object? sucursalLongitud = freezed,Object? nombreVendedor = freezed,Object? usuarioLogVendedor = freezed,Object? telefonoVendedor = freezed,}) {
  return _then(_self.copyWith(
mlvId: null == mlvId ? _self.mlvId : mlvId // ignore: cast_nullable_to_non_nullable
as int,visId: null == visId ? _self.visId : visId // ignore: cast_nullable_to_non_nullable
as int,mlvHora: freezed == mlvHora ? _self.mlvHora : mlvHora // ignore: cast_nullable_to_non_nullable
as Duration?,mlvLatitud: null == mlvLatitud ? _self.mlvLatitud : mlvLatitud // ignore: cast_nullable_to_non_nullable
as double,mlvLongitud: null == mlvLongitud ? _self.mlvLongitud : mlvLongitud // ignore: cast_nullable_to_non_nullable
as double,mlvEstadoDel: null == mlvEstadoDel ? _self.mlvEstadoDel : mlvEstadoDel // ignore: cast_nullable_to_non_nullable
as bool,mlvFechaCreacion: null == mlvFechaCreacion ? _self.mlvFechaCreacion : mlvFechaCreacion // ignore: cast_nullable_to_non_nullable
as String,nombreCliente: freezed == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String?,nombreSucursalCliente: freezed == nombreSucursalCliente ? _self.nombreSucursalCliente : nombreSucursalCliente // ignore: cast_nullable_to_non_nullable
as String?,sucursalLatitud: freezed == sucursalLatitud ? _self.sucursalLatitud : sucursalLatitud // ignore: cast_nullable_to_non_nullable
as String?,sucursalLongitud: freezed == sucursalLongitud ? _self.sucursalLongitud : sucursalLongitud // ignore: cast_nullable_to_non_nullable
as String?,nombreVendedor: freezed == nombreVendedor ? _self.nombreVendedor : nombreVendedor // ignore: cast_nullable_to_non_nullable
as String?,usuarioLogVendedor: freezed == usuarioLogVendedor ? _self.usuarioLogVendedor : usuarioLogVendedor // ignore: cast_nullable_to_non_nullable
as String?,telefonoVendedor: freezed == telefonoVendedor ? _self.telefonoVendedor : telefonoVendedor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MarcarLlegadaVisita].
extension MarcarLlegadaVisitaPatterns on MarcarLlegadaVisita {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarcarLlegadaVisita value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarcarLlegadaVisita() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarcarLlegadaVisita value)  $default,){
final _that = this;
switch (_that) {
case _MarcarLlegadaVisita():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarcarLlegadaVisita value)?  $default,){
final _that = this;
switch (_that) {
case _MarcarLlegadaVisita() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int mlvId,  int visId,  Duration? mlvHora,  double mlvLatitud,  double mlvLongitud,  bool mlvEstadoDel,  String mlvFechaCreacion,  String? nombreCliente,  String? nombreSucursalCliente,  String? sucursalLatitud,  String? sucursalLongitud,  String? nombreVendedor,  String? usuarioLogVendedor,  String? telefonoVendedor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarcarLlegadaVisita() when $default != null:
return $default(_that.mlvId,_that.visId,_that.mlvHora,_that.mlvLatitud,_that.mlvLongitud,_that.mlvEstadoDel,_that.mlvFechaCreacion,_that.nombreCliente,_that.nombreSucursalCliente,_that.sucursalLatitud,_that.sucursalLongitud,_that.nombreVendedor,_that.usuarioLogVendedor,_that.telefonoVendedor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int mlvId,  int visId,  Duration? mlvHora,  double mlvLatitud,  double mlvLongitud,  bool mlvEstadoDel,  String mlvFechaCreacion,  String? nombreCliente,  String? nombreSucursalCliente,  String? sucursalLatitud,  String? sucursalLongitud,  String? nombreVendedor,  String? usuarioLogVendedor,  String? telefonoVendedor)  $default,) {final _that = this;
switch (_that) {
case _MarcarLlegadaVisita():
return $default(_that.mlvId,_that.visId,_that.mlvHora,_that.mlvLatitud,_that.mlvLongitud,_that.mlvEstadoDel,_that.mlvFechaCreacion,_that.nombreCliente,_that.nombreSucursalCliente,_that.sucursalLatitud,_that.sucursalLongitud,_that.nombreVendedor,_that.usuarioLogVendedor,_that.telefonoVendedor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int mlvId,  int visId,  Duration? mlvHora,  double mlvLatitud,  double mlvLongitud,  bool mlvEstadoDel,  String mlvFechaCreacion,  String? nombreCliente,  String? nombreSucursalCliente,  String? sucursalLatitud,  String? sucursalLongitud,  String? nombreVendedor,  String? usuarioLogVendedor,  String? telefonoVendedor)?  $default,) {final _that = this;
switch (_that) {
case _MarcarLlegadaVisita() when $default != null:
return $default(_that.mlvId,_that.visId,_that.mlvHora,_that.mlvLatitud,_that.mlvLongitud,_that.mlvEstadoDel,_that.mlvFechaCreacion,_that.nombreCliente,_that.nombreSucursalCliente,_that.sucursalLatitud,_that.sucursalLongitud,_that.nombreVendedor,_that.usuarioLogVendedor,_that.telefonoVendedor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarcarLlegadaVisita implements MarcarLlegadaVisita {
  const _MarcarLlegadaVisita({required this.mlvId, required this.visId, required this.mlvHora, required this.mlvLatitud, required this.mlvLongitud, required this.mlvEstadoDel, required this.mlvFechaCreacion, required this.nombreCliente, required this.nombreSucursalCliente, required this.sucursalLatitud, required this.sucursalLongitud, required this.nombreVendedor, required this.usuarioLogVendedor, required this.telefonoVendedor});
  factory _MarcarLlegadaVisita.fromJson(Map<String, dynamic> json) => _$MarcarLlegadaVisitaFromJson(json);

@override final  int mlvId;
@override final  int visId;
@override final  Duration? mlvHora;
@override final  double mlvLatitud;
@override final  double mlvLongitud;
@override final  bool mlvEstadoDel;
@override final  String mlvFechaCreacion;
@override final  String? nombreCliente;
@override final  String? nombreSucursalCliente;
@override final  String? sucursalLatitud;
@override final  String? sucursalLongitud;
@override final  String? nombreVendedor;
@override final  String? usuarioLogVendedor;
@override final  String? telefonoVendedor;

/// Create a copy of MarcarLlegadaVisita
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarcarLlegadaVisitaCopyWith<_MarcarLlegadaVisita> get copyWith => __$MarcarLlegadaVisitaCopyWithImpl<_MarcarLlegadaVisita>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarcarLlegadaVisitaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarcarLlegadaVisita&&(identical(other.mlvId, mlvId) || other.mlvId == mlvId)&&(identical(other.visId, visId) || other.visId == visId)&&(identical(other.mlvHora, mlvHora) || other.mlvHora == mlvHora)&&(identical(other.mlvLatitud, mlvLatitud) || other.mlvLatitud == mlvLatitud)&&(identical(other.mlvLongitud, mlvLongitud) || other.mlvLongitud == mlvLongitud)&&(identical(other.mlvEstadoDel, mlvEstadoDel) || other.mlvEstadoDel == mlvEstadoDel)&&(identical(other.mlvFechaCreacion, mlvFechaCreacion) || other.mlvFechaCreacion == mlvFechaCreacion)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente)&&(identical(other.nombreSucursalCliente, nombreSucursalCliente) || other.nombreSucursalCliente == nombreSucursalCliente)&&(identical(other.sucursalLatitud, sucursalLatitud) || other.sucursalLatitud == sucursalLatitud)&&(identical(other.sucursalLongitud, sucursalLongitud) || other.sucursalLongitud == sucursalLongitud)&&(identical(other.nombreVendedor, nombreVendedor) || other.nombreVendedor == nombreVendedor)&&(identical(other.usuarioLogVendedor, usuarioLogVendedor) || other.usuarioLogVendedor == usuarioLogVendedor)&&(identical(other.telefonoVendedor, telefonoVendedor) || other.telefonoVendedor == telefonoVendedor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mlvId,visId,mlvHora,mlvLatitud,mlvLongitud,mlvEstadoDel,mlvFechaCreacion,nombreCliente,nombreSucursalCliente,sucursalLatitud,sucursalLongitud,nombreVendedor,usuarioLogVendedor,telefonoVendedor);

@override
String toString() {
  return 'MarcarLlegadaVisita(mlvId: $mlvId, visId: $visId, mlvHora: $mlvHora, mlvLatitud: $mlvLatitud, mlvLongitud: $mlvLongitud, mlvEstadoDel: $mlvEstadoDel, mlvFechaCreacion: $mlvFechaCreacion, nombreCliente: $nombreCliente, nombreSucursalCliente: $nombreSucursalCliente, sucursalLatitud: $sucursalLatitud, sucursalLongitud: $sucursalLongitud, nombreVendedor: $nombreVendedor, usuarioLogVendedor: $usuarioLogVendedor, telefonoVendedor: $telefonoVendedor)';
}


}

/// @nodoc
abstract mixin class _$MarcarLlegadaVisitaCopyWith<$Res> implements $MarcarLlegadaVisitaCopyWith<$Res> {
  factory _$MarcarLlegadaVisitaCopyWith(_MarcarLlegadaVisita value, $Res Function(_MarcarLlegadaVisita) _then) = __$MarcarLlegadaVisitaCopyWithImpl;
@override @useResult
$Res call({
 int mlvId, int visId, Duration? mlvHora, double mlvLatitud, double mlvLongitud, bool mlvEstadoDel, String mlvFechaCreacion, String? nombreCliente, String? nombreSucursalCliente, String? sucursalLatitud, String? sucursalLongitud, String? nombreVendedor, String? usuarioLogVendedor, String? telefonoVendedor
});




}
/// @nodoc
class __$MarcarLlegadaVisitaCopyWithImpl<$Res>
    implements _$MarcarLlegadaVisitaCopyWith<$Res> {
  __$MarcarLlegadaVisitaCopyWithImpl(this._self, this._then);

  final _MarcarLlegadaVisita _self;
  final $Res Function(_MarcarLlegadaVisita) _then;

/// Create a copy of MarcarLlegadaVisita
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mlvId = null,Object? visId = null,Object? mlvHora = freezed,Object? mlvLatitud = null,Object? mlvLongitud = null,Object? mlvEstadoDel = null,Object? mlvFechaCreacion = null,Object? nombreCliente = freezed,Object? nombreSucursalCliente = freezed,Object? sucursalLatitud = freezed,Object? sucursalLongitud = freezed,Object? nombreVendedor = freezed,Object? usuarioLogVendedor = freezed,Object? telefonoVendedor = freezed,}) {
  return _then(_MarcarLlegadaVisita(
mlvId: null == mlvId ? _self.mlvId : mlvId // ignore: cast_nullable_to_non_nullable
as int,visId: null == visId ? _self.visId : visId // ignore: cast_nullable_to_non_nullable
as int,mlvHora: freezed == mlvHora ? _self.mlvHora : mlvHora // ignore: cast_nullable_to_non_nullable
as Duration?,mlvLatitud: null == mlvLatitud ? _self.mlvLatitud : mlvLatitud // ignore: cast_nullable_to_non_nullable
as double,mlvLongitud: null == mlvLongitud ? _self.mlvLongitud : mlvLongitud // ignore: cast_nullable_to_non_nullable
as double,mlvEstadoDel: null == mlvEstadoDel ? _self.mlvEstadoDel : mlvEstadoDel // ignore: cast_nullable_to_non_nullable
as bool,mlvFechaCreacion: null == mlvFechaCreacion ? _self.mlvFechaCreacion : mlvFechaCreacion // ignore: cast_nullable_to_non_nullable
as String,nombreCliente: freezed == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String?,nombreSucursalCliente: freezed == nombreSucursalCliente ? _self.nombreSucursalCliente : nombreSucursalCliente // ignore: cast_nullable_to_non_nullable
as String?,sucursalLatitud: freezed == sucursalLatitud ? _self.sucursalLatitud : sucursalLatitud // ignore: cast_nullable_to_non_nullable
as String?,sucursalLongitud: freezed == sucursalLongitud ? _self.sucursalLongitud : sucursalLongitud // ignore: cast_nullable_to_non_nullable
as String?,nombreVendedor: freezed == nombreVendedor ? _self.nombreVendedor : nombreVendedor // ignore: cast_nullable_to_non_nullable
as String?,usuarioLogVendedor: freezed == usuarioLogVendedor ? _self.usuarioLogVendedor : usuarioLogVendedor // ignore: cast_nullable_to_non_nullable
as String?,telefonoVendedor: freezed == telefonoVendedor ? _self.telefonoVendedor : telefonoVendedor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
