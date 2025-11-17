// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direccion_cliente_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DireccionClienteDto {

 int get dirClId; DateTime get dirClFechaCreacion; int get clId; int? get zonId; String? get dirClNombreSucursal; String get dirClDireccion; double get dirClLatitud; double get dirClLongitud; bool get dirClEstadoDel;
/// Create a copy of DireccionClienteDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DireccionClienteDtoCopyWith<DireccionClienteDto> get copyWith => _$DireccionClienteDtoCopyWithImpl<DireccionClienteDto>(this as DireccionClienteDto, _$identity);

  /// Serializes this DireccionClienteDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DireccionClienteDto&&(identical(other.dirClId, dirClId) || other.dirClId == dirClId)&&(identical(other.dirClFechaCreacion, dirClFechaCreacion) || other.dirClFechaCreacion == dirClFechaCreacion)&&(identical(other.clId, clId) || other.clId == clId)&&(identical(other.zonId, zonId) || other.zonId == zonId)&&(identical(other.dirClNombreSucursal, dirClNombreSucursal) || other.dirClNombreSucursal == dirClNombreSucursal)&&(identical(other.dirClDireccion, dirClDireccion) || other.dirClDireccion == dirClDireccion)&&(identical(other.dirClLatitud, dirClLatitud) || other.dirClLatitud == dirClLatitud)&&(identical(other.dirClLongitud, dirClLongitud) || other.dirClLongitud == dirClLongitud)&&(identical(other.dirClEstadoDel, dirClEstadoDel) || other.dirClEstadoDel == dirClEstadoDel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dirClId,dirClFechaCreacion,clId,zonId,dirClNombreSucursal,dirClDireccion,dirClLatitud,dirClLongitud,dirClEstadoDel);

@override
String toString() {
  return 'DireccionClienteDto(dirClId: $dirClId, dirClFechaCreacion: $dirClFechaCreacion, clId: $clId, zonId: $zonId, dirClNombreSucursal: $dirClNombreSucursal, dirClDireccion: $dirClDireccion, dirClLatitud: $dirClLatitud, dirClLongitud: $dirClLongitud, dirClEstadoDel: $dirClEstadoDel)';
}


}

/// @nodoc
abstract mixin class $DireccionClienteDtoCopyWith<$Res>  {
  factory $DireccionClienteDtoCopyWith(DireccionClienteDto value, $Res Function(DireccionClienteDto) _then) = _$DireccionClienteDtoCopyWithImpl;
@useResult
$Res call({
 int dirClId, DateTime dirClFechaCreacion, int clId, int? zonId, String? dirClNombreSucursal, String dirClDireccion, double dirClLatitud, double dirClLongitud, bool dirClEstadoDel
});




}
/// @nodoc
class _$DireccionClienteDtoCopyWithImpl<$Res>
    implements $DireccionClienteDtoCopyWith<$Res> {
  _$DireccionClienteDtoCopyWithImpl(this._self, this._then);

  final DireccionClienteDto _self;
  final $Res Function(DireccionClienteDto) _then;

/// Create a copy of DireccionClienteDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dirClId = null,Object? dirClFechaCreacion = null,Object? clId = null,Object? zonId = freezed,Object? dirClNombreSucursal = freezed,Object? dirClDireccion = null,Object? dirClLatitud = null,Object? dirClLongitud = null,Object? dirClEstadoDel = null,}) {
  return _then(_self.copyWith(
dirClId: null == dirClId ? _self.dirClId : dirClId // ignore: cast_nullable_to_non_nullable
as int,dirClFechaCreacion: null == dirClFechaCreacion ? _self.dirClFechaCreacion : dirClFechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime,clId: null == clId ? _self.clId : clId // ignore: cast_nullable_to_non_nullable
as int,zonId: freezed == zonId ? _self.zonId : zonId // ignore: cast_nullable_to_non_nullable
as int?,dirClNombreSucursal: freezed == dirClNombreSucursal ? _self.dirClNombreSucursal : dirClNombreSucursal // ignore: cast_nullable_to_non_nullable
as String?,dirClDireccion: null == dirClDireccion ? _self.dirClDireccion : dirClDireccion // ignore: cast_nullable_to_non_nullable
as String,dirClLatitud: null == dirClLatitud ? _self.dirClLatitud : dirClLatitud // ignore: cast_nullable_to_non_nullable
as double,dirClLongitud: null == dirClLongitud ? _self.dirClLongitud : dirClLongitud // ignore: cast_nullable_to_non_nullable
as double,dirClEstadoDel: null == dirClEstadoDel ? _self.dirClEstadoDel : dirClEstadoDel // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DireccionClienteDto].
extension DireccionClienteDtoPatterns on DireccionClienteDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DireccionClienteDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DireccionClienteDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DireccionClienteDto value)  $default,){
final _that = this;
switch (_that) {
case _DireccionClienteDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DireccionClienteDto value)?  $default,){
final _that = this;
switch (_that) {
case _DireccionClienteDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int dirClId,  DateTime dirClFechaCreacion,  int clId,  int? zonId,  String? dirClNombreSucursal,  String dirClDireccion,  double dirClLatitud,  double dirClLongitud,  bool dirClEstadoDel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DireccionClienteDto() when $default != null:
return $default(_that.dirClId,_that.dirClFechaCreacion,_that.clId,_that.zonId,_that.dirClNombreSucursal,_that.dirClDireccion,_that.dirClLatitud,_that.dirClLongitud,_that.dirClEstadoDel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int dirClId,  DateTime dirClFechaCreacion,  int clId,  int? zonId,  String? dirClNombreSucursal,  String dirClDireccion,  double dirClLatitud,  double dirClLongitud,  bool dirClEstadoDel)  $default,) {final _that = this;
switch (_that) {
case _DireccionClienteDto():
return $default(_that.dirClId,_that.dirClFechaCreacion,_that.clId,_that.zonId,_that.dirClNombreSucursal,_that.dirClDireccion,_that.dirClLatitud,_that.dirClLongitud,_that.dirClEstadoDel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int dirClId,  DateTime dirClFechaCreacion,  int clId,  int? zonId,  String? dirClNombreSucursal,  String dirClDireccion,  double dirClLatitud,  double dirClLongitud,  bool dirClEstadoDel)?  $default,) {final _that = this;
switch (_that) {
case _DireccionClienteDto() when $default != null:
return $default(_that.dirClId,_that.dirClFechaCreacion,_that.clId,_that.zonId,_that.dirClNombreSucursal,_that.dirClDireccion,_that.dirClLatitud,_that.dirClLongitud,_that.dirClEstadoDel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DireccionClienteDto implements DireccionClienteDto {
  const _DireccionClienteDto({required this.dirClId, required this.dirClFechaCreacion, required this.clId, required this.zonId, required this.dirClNombreSucursal, required this.dirClDireccion, required this.dirClLatitud, required this.dirClLongitud, required this.dirClEstadoDel});
  factory _DireccionClienteDto.fromJson(Map<String, dynamic> json) => _$DireccionClienteDtoFromJson(json);

@override final  int dirClId;
@override final  DateTime dirClFechaCreacion;
@override final  int clId;
@override final  int? zonId;
@override final  String? dirClNombreSucursal;
@override final  String dirClDireccion;
@override final  double dirClLatitud;
@override final  double dirClLongitud;
@override final  bool dirClEstadoDel;

/// Create a copy of DireccionClienteDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DireccionClienteDtoCopyWith<_DireccionClienteDto> get copyWith => __$DireccionClienteDtoCopyWithImpl<_DireccionClienteDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DireccionClienteDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DireccionClienteDto&&(identical(other.dirClId, dirClId) || other.dirClId == dirClId)&&(identical(other.dirClFechaCreacion, dirClFechaCreacion) || other.dirClFechaCreacion == dirClFechaCreacion)&&(identical(other.clId, clId) || other.clId == clId)&&(identical(other.zonId, zonId) || other.zonId == zonId)&&(identical(other.dirClNombreSucursal, dirClNombreSucursal) || other.dirClNombreSucursal == dirClNombreSucursal)&&(identical(other.dirClDireccion, dirClDireccion) || other.dirClDireccion == dirClDireccion)&&(identical(other.dirClLatitud, dirClLatitud) || other.dirClLatitud == dirClLatitud)&&(identical(other.dirClLongitud, dirClLongitud) || other.dirClLongitud == dirClLongitud)&&(identical(other.dirClEstadoDel, dirClEstadoDel) || other.dirClEstadoDel == dirClEstadoDel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dirClId,dirClFechaCreacion,clId,zonId,dirClNombreSucursal,dirClDireccion,dirClLatitud,dirClLongitud,dirClEstadoDel);

@override
String toString() {
  return 'DireccionClienteDto(dirClId: $dirClId, dirClFechaCreacion: $dirClFechaCreacion, clId: $clId, zonId: $zonId, dirClNombreSucursal: $dirClNombreSucursal, dirClDireccion: $dirClDireccion, dirClLatitud: $dirClLatitud, dirClLongitud: $dirClLongitud, dirClEstadoDel: $dirClEstadoDel)';
}


}

/// @nodoc
abstract mixin class _$DireccionClienteDtoCopyWith<$Res> implements $DireccionClienteDtoCopyWith<$Res> {
  factory _$DireccionClienteDtoCopyWith(_DireccionClienteDto value, $Res Function(_DireccionClienteDto) _then) = __$DireccionClienteDtoCopyWithImpl;
@override @useResult
$Res call({
 int dirClId, DateTime dirClFechaCreacion, int clId, int? zonId, String? dirClNombreSucursal, String dirClDireccion, double dirClLatitud, double dirClLongitud, bool dirClEstadoDel
});




}
/// @nodoc
class __$DireccionClienteDtoCopyWithImpl<$Res>
    implements _$DireccionClienteDtoCopyWith<$Res> {
  __$DireccionClienteDtoCopyWithImpl(this._self, this._then);

  final _DireccionClienteDto _self;
  final $Res Function(_DireccionClienteDto) _then;

/// Create a copy of DireccionClienteDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dirClId = null,Object? dirClFechaCreacion = null,Object? clId = null,Object? zonId = freezed,Object? dirClNombreSucursal = freezed,Object? dirClDireccion = null,Object? dirClLatitud = null,Object? dirClLongitud = null,Object? dirClEstadoDel = null,}) {
  return _then(_DireccionClienteDto(
dirClId: null == dirClId ? _self.dirClId : dirClId // ignore: cast_nullable_to_non_nullable
as int,dirClFechaCreacion: null == dirClFechaCreacion ? _self.dirClFechaCreacion : dirClFechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime,clId: null == clId ? _self.clId : clId // ignore: cast_nullable_to_non_nullable
as int,zonId: freezed == zonId ? _self.zonId : zonId // ignore: cast_nullable_to_non_nullable
as int?,dirClNombreSucursal: freezed == dirClNombreSucursal ? _self.dirClNombreSucursal : dirClNombreSucursal // ignore: cast_nullable_to_non_nullable
as String?,dirClDireccion: null == dirClDireccion ? _self.dirClDireccion : dirClDireccion // ignore: cast_nullable_to_non_nullable
as String,dirClLatitud: null == dirClLatitud ? _self.dirClLatitud : dirClLatitud // ignore: cast_nullable_to_non_nullable
as double,dirClLongitud: null == dirClLongitud ? _self.dirClLongitud : dirClLongitud // ignore: cast_nullable_to_non_nullable
as double,dirClEstadoDel: null == dirClEstadoDel ? _self.dirClEstadoDel : dirClEstadoDel // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
