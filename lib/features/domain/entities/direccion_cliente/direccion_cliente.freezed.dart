// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direccion_cliente.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DireccionCliente {

 int get dirClId; DateTime get dirClFechaCreacion; int get clId; int? get zonId; String? get dirClNombreSucursal; String get dirClDireccion; double get dirClLatitud; double get dirClLongitud; bool get dirClEstadoDel;
/// Create a copy of DireccionCliente
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DireccionClienteCopyWith<DireccionCliente> get copyWith => _$DireccionClienteCopyWithImpl<DireccionCliente>(this as DireccionCliente, _$identity);

  /// Serializes this DireccionCliente to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DireccionCliente&&(identical(other.dirClId, dirClId) || other.dirClId == dirClId)&&(identical(other.dirClFechaCreacion, dirClFechaCreacion) || other.dirClFechaCreacion == dirClFechaCreacion)&&(identical(other.clId, clId) || other.clId == clId)&&(identical(other.zonId, zonId) || other.zonId == zonId)&&(identical(other.dirClNombreSucursal, dirClNombreSucursal) || other.dirClNombreSucursal == dirClNombreSucursal)&&(identical(other.dirClDireccion, dirClDireccion) || other.dirClDireccion == dirClDireccion)&&(identical(other.dirClLatitud, dirClLatitud) || other.dirClLatitud == dirClLatitud)&&(identical(other.dirClLongitud, dirClLongitud) || other.dirClLongitud == dirClLongitud)&&(identical(other.dirClEstadoDel, dirClEstadoDel) || other.dirClEstadoDel == dirClEstadoDel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dirClId,dirClFechaCreacion,clId,zonId,dirClNombreSucursal,dirClDireccion,dirClLatitud,dirClLongitud,dirClEstadoDel);

@override
String toString() {
  return 'DireccionCliente(dirClId: $dirClId, dirClFechaCreacion: $dirClFechaCreacion, clId: $clId, zonId: $zonId, dirClNombreSucursal: $dirClNombreSucursal, dirClDireccion: $dirClDireccion, dirClLatitud: $dirClLatitud, dirClLongitud: $dirClLongitud, dirClEstadoDel: $dirClEstadoDel)';
}


}

/// @nodoc
abstract mixin class $DireccionClienteCopyWith<$Res>  {
  factory $DireccionClienteCopyWith(DireccionCliente value, $Res Function(DireccionCliente) _then) = _$DireccionClienteCopyWithImpl;
@useResult
$Res call({
 int dirClId, DateTime dirClFechaCreacion, int clId, int? zonId, String? dirClNombreSucursal, String dirClDireccion, double dirClLatitud, double dirClLongitud, bool dirClEstadoDel
});




}
/// @nodoc
class _$DireccionClienteCopyWithImpl<$Res>
    implements $DireccionClienteCopyWith<$Res> {
  _$DireccionClienteCopyWithImpl(this._self, this._then);

  final DireccionCliente _self;
  final $Res Function(DireccionCliente) _then;

/// Create a copy of DireccionCliente
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


/// Adds pattern-matching-related methods to [DireccionCliente].
extension DireccionClientePatterns on DireccionCliente {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DireccionCliente value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DireccionCliente() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DireccionCliente value)  $default,){
final _that = this;
switch (_that) {
case _DireccionCliente():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DireccionCliente value)?  $default,){
final _that = this;
switch (_that) {
case _DireccionCliente() when $default != null:
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
case _DireccionCliente() when $default != null:
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
case _DireccionCliente():
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
case _DireccionCliente() when $default != null:
return $default(_that.dirClId,_that.dirClFechaCreacion,_that.clId,_that.zonId,_that.dirClNombreSucursal,_that.dirClDireccion,_that.dirClLatitud,_that.dirClLongitud,_that.dirClEstadoDel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DireccionCliente implements DireccionCliente {
  const _DireccionCliente({required this.dirClId, required this.dirClFechaCreacion, required this.clId, required this.zonId, required this.dirClNombreSucursal, required this.dirClDireccion, required this.dirClLatitud, required this.dirClLongitud, required this.dirClEstadoDel});
  factory _DireccionCliente.fromJson(Map<String, dynamic> json) => _$DireccionClienteFromJson(json);

@override final  int dirClId;
@override final  DateTime dirClFechaCreacion;
@override final  int clId;
@override final  int? zonId;
@override final  String? dirClNombreSucursal;
@override final  String dirClDireccion;
@override final  double dirClLatitud;
@override final  double dirClLongitud;
@override final  bool dirClEstadoDel;

/// Create a copy of DireccionCliente
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DireccionClienteCopyWith<_DireccionCliente> get copyWith => __$DireccionClienteCopyWithImpl<_DireccionCliente>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DireccionClienteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DireccionCliente&&(identical(other.dirClId, dirClId) || other.dirClId == dirClId)&&(identical(other.dirClFechaCreacion, dirClFechaCreacion) || other.dirClFechaCreacion == dirClFechaCreacion)&&(identical(other.clId, clId) || other.clId == clId)&&(identical(other.zonId, zonId) || other.zonId == zonId)&&(identical(other.dirClNombreSucursal, dirClNombreSucursal) || other.dirClNombreSucursal == dirClNombreSucursal)&&(identical(other.dirClDireccion, dirClDireccion) || other.dirClDireccion == dirClDireccion)&&(identical(other.dirClLatitud, dirClLatitud) || other.dirClLatitud == dirClLatitud)&&(identical(other.dirClLongitud, dirClLongitud) || other.dirClLongitud == dirClLongitud)&&(identical(other.dirClEstadoDel, dirClEstadoDel) || other.dirClEstadoDel == dirClEstadoDel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dirClId,dirClFechaCreacion,clId,zonId,dirClNombreSucursal,dirClDireccion,dirClLatitud,dirClLongitud,dirClEstadoDel);

@override
String toString() {
  return 'DireccionCliente(dirClId: $dirClId, dirClFechaCreacion: $dirClFechaCreacion, clId: $clId, zonId: $zonId, dirClNombreSucursal: $dirClNombreSucursal, dirClDireccion: $dirClDireccion, dirClLatitud: $dirClLatitud, dirClLongitud: $dirClLongitud, dirClEstadoDel: $dirClEstadoDel)';
}


}

/// @nodoc
abstract mixin class _$DireccionClienteCopyWith<$Res> implements $DireccionClienteCopyWith<$Res> {
  factory _$DireccionClienteCopyWith(_DireccionCliente value, $Res Function(_DireccionCliente) _then) = __$DireccionClienteCopyWithImpl;
@override @useResult
$Res call({
 int dirClId, DateTime dirClFechaCreacion, int clId, int? zonId, String? dirClNombreSucursal, String dirClDireccion, double dirClLatitud, double dirClLongitud, bool dirClEstadoDel
});




}
/// @nodoc
class __$DireccionClienteCopyWithImpl<$Res>
    implements _$DireccionClienteCopyWith<$Res> {
  __$DireccionClienteCopyWithImpl(this._self, this._then);

  final _DireccionCliente _self;
  final $Res Function(_DireccionCliente) _then;

/// Create a copy of DireccionCliente
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dirClId = null,Object? dirClFechaCreacion = null,Object? clId = null,Object? zonId = freezed,Object? dirClNombreSucursal = freezed,Object? dirClDireccion = null,Object? dirClLatitud = null,Object? dirClLongitud = null,Object? dirClEstadoDel = null,}) {
  return _then(_DireccionCliente(
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
