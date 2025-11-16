// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seguimiento_vendedor_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SeguimientoVendedorDto {

 int get segId; int get venId; DateTime get segFechaCreacion; double get segLatitud; double get segLongitud; String? get vendedorNombre;
/// Create a copy of SeguimientoVendedorDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeguimientoVendedorDtoCopyWith<SeguimientoVendedorDto> get copyWith => _$SeguimientoVendedorDtoCopyWithImpl<SeguimientoVendedorDto>(this as SeguimientoVendedorDto, _$identity);

  /// Serializes this SeguimientoVendedorDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeguimientoVendedorDto&&(identical(other.segId, segId) || other.segId == segId)&&(identical(other.venId, venId) || other.venId == venId)&&(identical(other.segFechaCreacion, segFechaCreacion) || other.segFechaCreacion == segFechaCreacion)&&(identical(other.segLatitud, segLatitud) || other.segLatitud == segLatitud)&&(identical(other.segLongitud, segLongitud) || other.segLongitud == segLongitud)&&(identical(other.vendedorNombre, vendedorNombre) || other.vendedorNombre == vendedorNombre));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,segId,venId,segFechaCreacion,segLatitud,segLongitud,vendedorNombre);

@override
String toString() {
  return 'SeguimientoVendedorDto(segId: $segId, venId: $venId, segFechaCreacion: $segFechaCreacion, segLatitud: $segLatitud, segLongitud: $segLongitud, vendedorNombre: $vendedorNombre)';
}


}

/// @nodoc
abstract mixin class $SeguimientoVendedorDtoCopyWith<$Res>  {
  factory $SeguimientoVendedorDtoCopyWith(SeguimientoVendedorDto value, $Res Function(SeguimientoVendedorDto) _then) = _$SeguimientoVendedorDtoCopyWithImpl;
@useResult
$Res call({
 int segId, int venId, DateTime segFechaCreacion, double segLatitud, double segLongitud, String? vendedorNombre
});




}
/// @nodoc
class _$SeguimientoVendedorDtoCopyWithImpl<$Res>
    implements $SeguimientoVendedorDtoCopyWith<$Res> {
  _$SeguimientoVendedorDtoCopyWithImpl(this._self, this._then);

  final SeguimientoVendedorDto _self;
  final $Res Function(SeguimientoVendedorDto) _then;

/// Create a copy of SeguimientoVendedorDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? segId = null,Object? venId = null,Object? segFechaCreacion = null,Object? segLatitud = null,Object? segLongitud = null,Object? vendedorNombre = freezed,}) {
  return _then(_self.copyWith(
segId: null == segId ? _self.segId : segId // ignore: cast_nullable_to_non_nullable
as int,venId: null == venId ? _self.venId : venId // ignore: cast_nullable_to_non_nullable
as int,segFechaCreacion: null == segFechaCreacion ? _self.segFechaCreacion : segFechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime,segLatitud: null == segLatitud ? _self.segLatitud : segLatitud // ignore: cast_nullable_to_non_nullable
as double,segLongitud: null == segLongitud ? _self.segLongitud : segLongitud // ignore: cast_nullable_to_non_nullable
as double,vendedorNombre: freezed == vendedorNombre ? _self.vendedorNombre : vendedorNombre // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SeguimientoVendedorDto].
extension SeguimientoVendedorDtoPatterns on SeguimientoVendedorDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SeguimientoVendedorDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SeguimientoVendedorDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SeguimientoVendedorDto value)  $default,){
final _that = this;
switch (_that) {
case _SeguimientoVendedorDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SeguimientoVendedorDto value)?  $default,){
final _that = this;
switch (_that) {
case _SeguimientoVendedorDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int segId,  int venId,  DateTime segFechaCreacion,  double segLatitud,  double segLongitud,  String? vendedorNombre)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SeguimientoVendedorDto() when $default != null:
return $default(_that.segId,_that.venId,_that.segFechaCreacion,_that.segLatitud,_that.segLongitud,_that.vendedorNombre);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int segId,  int venId,  DateTime segFechaCreacion,  double segLatitud,  double segLongitud,  String? vendedorNombre)  $default,) {final _that = this;
switch (_that) {
case _SeguimientoVendedorDto():
return $default(_that.segId,_that.venId,_that.segFechaCreacion,_that.segLatitud,_that.segLongitud,_that.vendedorNombre);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int segId,  int venId,  DateTime segFechaCreacion,  double segLatitud,  double segLongitud,  String? vendedorNombre)?  $default,) {final _that = this;
switch (_that) {
case _SeguimientoVendedorDto() when $default != null:
return $default(_that.segId,_that.venId,_that.segFechaCreacion,_that.segLatitud,_that.segLongitud,_that.vendedorNombre);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SeguimientoVendedorDto implements SeguimientoVendedorDto {
  const _SeguimientoVendedorDto({required this.segId, required this.venId, required this.segFechaCreacion, required this.segLatitud, required this.segLongitud, required this.vendedorNombre});
  factory _SeguimientoVendedorDto.fromJson(Map<String, dynamic> json) => _$SeguimientoVendedorDtoFromJson(json);

@override final  int segId;
@override final  int venId;
@override final  DateTime segFechaCreacion;
@override final  double segLatitud;
@override final  double segLongitud;
@override final  String? vendedorNombre;

/// Create a copy of SeguimientoVendedorDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeguimientoVendedorDtoCopyWith<_SeguimientoVendedorDto> get copyWith => __$SeguimientoVendedorDtoCopyWithImpl<_SeguimientoVendedorDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeguimientoVendedorDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SeguimientoVendedorDto&&(identical(other.segId, segId) || other.segId == segId)&&(identical(other.venId, venId) || other.venId == venId)&&(identical(other.segFechaCreacion, segFechaCreacion) || other.segFechaCreacion == segFechaCreacion)&&(identical(other.segLatitud, segLatitud) || other.segLatitud == segLatitud)&&(identical(other.segLongitud, segLongitud) || other.segLongitud == segLongitud)&&(identical(other.vendedorNombre, vendedorNombre) || other.vendedorNombre == vendedorNombre));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,segId,venId,segFechaCreacion,segLatitud,segLongitud,vendedorNombre);

@override
String toString() {
  return 'SeguimientoVendedorDto(segId: $segId, venId: $venId, segFechaCreacion: $segFechaCreacion, segLatitud: $segLatitud, segLongitud: $segLongitud, vendedorNombre: $vendedorNombre)';
}


}

/// @nodoc
abstract mixin class _$SeguimientoVendedorDtoCopyWith<$Res> implements $SeguimientoVendedorDtoCopyWith<$Res> {
  factory _$SeguimientoVendedorDtoCopyWith(_SeguimientoVendedorDto value, $Res Function(_SeguimientoVendedorDto) _then) = __$SeguimientoVendedorDtoCopyWithImpl;
@override @useResult
$Res call({
 int segId, int venId, DateTime segFechaCreacion, double segLatitud, double segLongitud, String? vendedorNombre
});




}
/// @nodoc
class __$SeguimientoVendedorDtoCopyWithImpl<$Res>
    implements _$SeguimientoVendedorDtoCopyWith<$Res> {
  __$SeguimientoVendedorDtoCopyWithImpl(this._self, this._then);

  final _SeguimientoVendedorDto _self;
  final $Res Function(_SeguimientoVendedorDto) _then;

/// Create a copy of SeguimientoVendedorDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? segId = null,Object? venId = null,Object? segFechaCreacion = null,Object? segLatitud = null,Object? segLongitud = null,Object? vendedorNombre = freezed,}) {
  return _then(_SeguimientoVendedorDto(
segId: null == segId ? _self.segId : segId // ignore: cast_nullable_to_non_nullable
as int,venId: null == venId ? _self.venId : venId // ignore: cast_nullable_to_non_nullable
as int,segFechaCreacion: null == segFechaCreacion ? _self.segFechaCreacion : segFechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime,segLatitud: null == segLatitud ? _self.segLatitud : segLatitud // ignore: cast_nullable_to_non_nullable
as double,segLongitud: null == segLongitud ? _self.segLongitud : segLongitud // ignore: cast_nullable_to_non_nullable
as double,vendedorNombre: freezed == vendedorNombre ? _self.vendedorNombre : vendedorNombre // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
