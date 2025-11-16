// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visita_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VisitaDto {

 int get visId; int get rutId; int get dirClId; DateTime get visFechaCreacion; bool get visEstadoDel; String get visComentario; String get nombreCliente; String get nombreSucursalCliente; double get sucursalLatitud; double get sucursalLongitud; String get nombreZona; String get direccion; String get nombreVendedor; String get nombreRuta; DateTime get fechaEjecucionRuta;
/// Create a copy of VisitaDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisitaDtoCopyWith<VisitaDto> get copyWith => _$VisitaDtoCopyWithImpl<VisitaDto>(this as VisitaDto, _$identity);

  /// Serializes this VisitaDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisitaDto&&(identical(other.visId, visId) || other.visId == visId)&&(identical(other.rutId, rutId) || other.rutId == rutId)&&(identical(other.dirClId, dirClId) || other.dirClId == dirClId)&&(identical(other.visFechaCreacion, visFechaCreacion) || other.visFechaCreacion == visFechaCreacion)&&(identical(other.visEstadoDel, visEstadoDel) || other.visEstadoDel == visEstadoDel)&&(identical(other.visComentario, visComentario) || other.visComentario == visComentario)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente)&&(identical(other.nombreSucursalCliente, nombreSucursalCliente) || other.nombreSucursalCliente == nombreSucursalCliente)&&(identical(other.sucursalLatitud, sucursalLatitud) || other.sucursalLatitud == sucursalLatitud)&&(identical(other.sucursalLongitud, sucursalLongitud) || other.sucursalLongitud == sucursalLongitud)&&(identical(other.nombreZona, nombreZona) || other.nombreZona == nombreZona)&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.nombreVendedor, nombreVendedor) || other.nombreVendedor == nombreVendedor)&&(identical(other.nombreRuta, nombreRuta) || other.nombreRuta == nombreRuta)&&(identical(other.fechaEjecucionRuta, fechaEjecucionRuta) || other.fechaEjecucionRuta == fechaEjecucionRuta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,visId,rutId,dirClId,visFechaCreacion,visEstadoDel,visComentario,nombreCliente,nombreSucursalCliente,sucursalLatitud,sucursalLongitud,nombreZona,direccion,nombreVendedor,nombreRuta,fechaEjecucionRuta);

@override
String toString() {
  return 'VisitaDto(visId: $visId, rutId: $rutId, dirClId: $dirClId, visFechaCreacion: $visFechaCreacion, visEstadoDel: $visEstadoDel, visComentario: $visComentario, nombreCliente: $nombreCliente, nombreSucursalCliente: $nombreSucursalCliente, sucursalLatitud: $sucursalLatitud, sucursalLongitud: $sucursalLongitud, nombreZona: $nombreZona, direccion: $direccion, nombreVendedor: $nombreVendedor, nombreRuta: $nombreRuta, fechaEjecucionRuta: $fechaEjecucionRuta)';
}


}

/// @nodoc
abstract mixin class $VisitaDtoCopyWith<$Res>  {
  factory $VisitaDtoCopyWith(VisitaDto value, $Res Function(VisitaDto) _then) = _$VisitaDtoCopyWithImpl;
@useResult
$Res call({
 int visId, int rutId, int dirClId, DateTime visFechaCreacion, bool visEstadoDel, String visComentario, String nombreCliente, String nombreSucursalCliente, double sucursalLatitud, double sucursalLongitud, String nombreZona, String direccion, String nombreVendedor, String nombreRuta, DateTime fechaEjecucionRuta
});




}
/// @nodoc
class _$VisitaDtoCopyWithImpl<$Res>
    implements $VisitaDtoCopyWith<$Res> {
  _$VisitaDtoCopyWithImpl(this._self, this._then);

  final VisitaDto _self;
  final $Res Function(VisitaDto) _then;

/// Create a copy of VisitaDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? visId = null,Object? rutId = null,Object? dirClId = null,Object? visFechaCreacion = null,Object? visEstadoDel = null,Object? visComentario = null,Object? nombreCliente = null,Object? nombreSucursalCliente = null,Object? sucursalLatitud = null,Object? sucursalLongitud = null,Object? nombreZona = null,Object? direccion = null,Object? nombreVendedor = null,Object? nombreRuta = null,Object? fechaEjecucionRuta = null,}) {
  return _then(_self.copyWith(
visId: null == visId ? _self.visId : visId // ignore: cast_nullable_to_non_nullable
as int,rutId: null == rutId ? _self.rutId : rutId // ignore: cast_nullable_to_non_nullable
as int,dirClId: null == dirClId ? _self.dirClId : dirClId // ignore: cast_nullable_to_non_nullable
as int,visFechaCreacion: null == visFechaCreacion ? _self.visFechaCreacion : visFechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime,visEstadoDel: null == visEstadoDel ? _self.visEstadoDel : visEstadoDel // ignore: cast_nullable_to_non_nullable
as bool,visComentario: null == visComentario ? _self.visComentario : visComentario // ignore: cast_nullable_to_non_nullable
as String,nombreCliente: null == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String,nombreSucursalCliente: null == nombreSucursalCliente ? _self.nombreSucursalCliente : nombreSucursalCliente // ignore: cast_nullable_to_non_nullable
as String,sucursalLatitud: null == sucursalLatitud ? _self.sucursalLatitud : sucursalLatitud // ignore: cast_nullable_to_non_nullable
as double,sucursalLongitud: null == sucursalLongitud ? _self.sucursalLongitud : sucursalLongitud // ignore: cast_nullable_to_non_nullable
as double,nombreZona: null == nombreZona ? _self.nombreZona : nombreZona // ignore: cast_nullable_to_non_nullable
as String,direccion: null == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String,nombreVendedor: null == nombreVendedor ? _self.nombreVendedor : nombreVendedor // ignore: cast_nullable_to_non_nullable
as String,nombreRuta: null == nombreRuta ? _self.nombreRuta : nombreRuta // ignore: cast_nullable_to_non_nullable
as String,fechaEjecucionRuta: null == fechaEjecucionRuta ? _self.fechaEjecucionRuta : fechaEjecucionRuta // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [VisitaDto].
extension VisitaDtoPatterns on VisitaDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisitaDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisitaDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisitaDto value)  $default,){
final _that = this;
switch (_that) {
case _VisitaDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisitaDto value)?  $default,){
final _that = this;
switch (_that) {
case _VisitaDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int visId,  int rutId,  int dirClId,  DateTime visFechaCreacion,  bool visEstadoDel,  String visComentario,  String nombreCliente,  String nombreSucursalCliente,  double sucursalLatitud,  double sucursalLongitud,  String nombreZona,  String direccion,  String nombreVendedor,  String nombreRuta,  DateTime fechaEjecucionRuta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VisitaDto() when $default != null:
return $default(_that.visId,_that.rutId,_that.dirClId,_that.visFechaCreacion,_that.visEstadoDel,_that.visComentario,_that.nombreCliente,_that.nombreSucursalCliente,_that.sucursalLatitud,_that.sucursalLongitud,_that.nombreZona,_that.direccion,_that.nombreVendedor,_that.nombreRuta,_that.fechaEjecucionRuta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int visId,  int rutId,  int dirClId,  DateTime visFechaCreacion,  bool visEstadoDel,  String visComentario,  String nombreCliente,  String nombreSucursalCliente,  double sucursalLatitud,  double sucursalLongitud,  String nombreZona,  String direccion,  String nombreVendedor,  String nombreRuta,  DateTime fechaEjecucionRuta)  $default,) {final _that = this;
switch (_that) {
case _VisitaDto():
return $default(_that.visId,_that.rutId,_that.dirClId,_that.visFechaCreacion,_that.visEstadoDel,_that.visComentario,_that.nombreCliente,_that.nombreSucursalCliente,_that.sucursalLatitud,_that.sucursalLongitud,_that.nombreZona,_that.direccion,_that.nombreVendedor,_that.nombreRuta,_that.fechaEjecucionRuta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int visId,  int rutId,  int dirClId,  DateTime visFechaCreacion,  bool visEstadoDel,  String visComentario,  String nombreCliente,  String nombreSucursalCliente,  double sucursalLatitud,  double sucursalLongitud,  String nombreZona,  String direccion,  String nombreVendedor,  String nombreRuta,  DateTime fechaEjecucionRuta)?  $default,) {final _that = this;
switch (_that) {
case _VisitaDto() when $default != null:
return $default(_that.visId,_that.rutId,_that.dirClId,_that.visFechaCreacion,_that.visEstadoDel,_that.visComentario,_that.nombreCliente,_that.nombreSucursalCliente,_that.sucursalLatitud,_that.sucursalLongitud,_that.nombreZona,_that.direccion,_that.nombreVendedor,_that.nombreRuta,_that.fechaEjecucionRuta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VisitaDto implements VisitaDto {
  const _VisitaDto({required this.visId, required this.rutId, required this.dirClId, required this.visFechaCreacion, required this.visEstadoDel, required this.visComentario, required this.nombreCliente, required this.nombreSucursalCliente, required this.sucursalLatitud, required this.sucursalLongitud, required this.nombreZona, required this.direccion, required this.nombreVendedor, required this.nombreRuta, required this.fechaEjecucionRuta});
  factory _VisitaDto.fromJson(Map<String, dynamic> json) => _$VisitaDtoFromJson(json);

@override final  int visId;
@override final  int rutId;
@override final  int dirClId;
@override final  DateTime visFechaCreacion;
@override final  bool visEstadoDel;
@override final  String visComentario;
@override final  String nombreCliente;
@override final  String nombreSucursalCliente;
@override final  double sucursalLatitud;
@override final  double sucursalLongitud;
@override final  String nombreZona;
@override final  String direccion;
@override final  String nombreVendedor;
@override final  String nombreRuta;
@override final  DateTime fechaEjecucionRuta;

/// Create a copy of VisitaDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisitaDtoCopyWith<_VisitaDto> get copyWith => __$VisitaDtoCopyWithImpl<_VisitaDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VisitaDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VisitaDto&&(identical(other.visId, visId) || other.visId == visId)&&(identical(other.rutId, rutId) || other.rutId == rutId)&&(identical(other.dirClId, dirClId) || other.dirClId == dirClId)&&(identical(other.visFechaCreacion, visFechaCreacion) || other.visFechaCreacion == visFechaCreacion)&&(identical(other.visEstadoDel, visEstadoDel) || other.visEstadoDel == visEstadoDel)&&(identical(other.visComentario, visComentario) || other.visComentario == visComentario)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente)&&(identical(other.nombreSucursalCliente, nombreSucursalCliente) || other.nombreSucursalCliente == nombreSucursalCliente)&&(identical(other.sucursalLatitud, sucursalLatitud) || other.sucursalLatitud == sucursalLatitud)&&(identical(other.sucursalLongitud, sucursalLongitud) || other.sucursalLongitud == sucursalLongitud)&&(identical(other.nombreZona, nombreZona) || other.nombreZona == nombreZona)&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.nombreVendedor, nombreVendedor) || other.nombreVendedor == nombreVendedor)&&(identical(other.nombreRuta, nombreRuta) || other.nombreRuta == nombreRuta)&&(identical(other.fechaEjecucionRuta, fechaEjecucionRuta) || other.fechaEjecucionRuta == fechaEjecucionRuta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,visId,rutId,dirClId,visFechaCreacion,visEstadoDel,visComentario,nombreCliente,nombreSucursalCliente,sucursalLatitud,sucursalLongitud,nombreZona,direccion,nombreVendedor,nombreRuta,fechaEjecucionRuta);

@override
String toString() {
  return 'VisitaDto(visId: $visId, rutId: $rutId, dirClId: $dirClId, visFechaCreacion: $visFechaCreacion, visEstadoDel: $visEstadoDel, visComentario: $visComentario, nombreCliente: $nombreCliente, nombreSucursalCliente: $nombreSucursalCliente, sucursalLatitud: $sucursalLatitud, sucursalLongitud: $sucursalLongitud, nombreZona: $nombreZona, direccion: $direccion, nombreVendedor: $nombreVendedor, nombreRuta: $nombreRuta, fechaEjecucionRuta: $fechaEjecucionRuta)';
}


}

/// @nodoc
abstract mixin class _$VisitaDtoCopyWith<$Res> implements $VisitaDtoCopyWith<$Res> {
  factory _$VisitaDtoCopyWith(_VisitaDto value, $Res Function(_VisitaDto) _then) = __$VisitaDtoCopyWithImpl;
@override @useResult
$Res call({
 int visId, int rutId, int dirClId, DateTime visFechaCreacion, bool visEstadoDel, String visComentario, String nombreCliente, String nombreSucursalCliente, double sucursalLatitud, double sucursalLongitud, String nombreZona, String direccion, String nombreVendedor, String nombreRuta, DateTime fechaEjecucionRuta
});




}
/// @nodoc
class __$VisitaDtoCopyWithImpl<$Res>
    implements _$VisitaDtoCopyWith<$Res> {
  __$VisitaDtoCopyWithImpl(this._self, this._then);

  final _VisitaDto _self;
  final $Res Function(_VisitaDto) _then;

/// Create a copy of VisitaDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? visId = null,Object? rutId = null,Object? dirClId = null,Object? visFechaCreacion = null,Object? visEstadoDel = null,Object? visComentario = null,Object? nombreCliente = null,Object? nombreSucursalCliente = null,Object? sucursalLatitud = null,Object? sucursalLongitud = null,Object? nombreZona = null,Object? direccion = null,Object? nombreVendedor = null,Object? nombreRuta = null,Object? fechaEjecucionRuta = null,}) {
  return _then(_VisitaDto(
visId: null == visId ? _self.visId : visId // ignore: cast_nullable_to_non_nullable
as int,rutId: null == rutId ? _self.rutId : rutId // ignore: cast_nullable_to_non_nullable
as int,dirClId: null == dirClId ? _self.dirClId : dirClId // ignore: cast_nullable_to_non_nullable
as int,visFechaCreacion: null == visFechaCreacion ? _self.visFechaCreacion : visFechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime,visEstadoDel: null == visEstadoDel ? _self.visEstadoDel : visEstadoDel // ignore: cast_nullable_to_non_nullable
as bool,visComentario: null == visComentario ? _self.visComentario : visComentario // ignore: cast_nullable_to_non_nullable
as String,nombreCliente: null == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String,nombreSucursalCliente: null == nombreSucursalCliente ? _self.nombreSucursalCliente : nombreSucursalCliente // ignore: cast_nullable_to_non_nullable
as String,sucursalLatitud: null == sucursalLatitud ? _self.sucursalLatitud : sucursalLatitud // ignore: cast_nullable_to_non_nullable
as double,sucursalLongitud: null == sucursalLongitud ? _self.sucursalLongitud : sucursalLongitud // ignore: cast_nullable_to_non_nullable
as double,nombreZona: null == nombreZona ? _self.nombreZona : nombreZona // ignore: cast_nullable_to_non_nullable
as String,direccion: null == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String,nombreVendedor: null == nombreVendedor ? _self.nombreVendedor : nombreVendedor // ignore: cast_nullable_to_non_nullable
as String,nombreRuta: null == nombreRuta ? _self.nombreRuta : nombreRuta // ignore: cast_nullable_to_non_nullable
as String,fechaEjecucionRuta: null == fechaEjecucionRuta ? _self.fechaEjecucionRuta : fechaEjecucionRuta // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
