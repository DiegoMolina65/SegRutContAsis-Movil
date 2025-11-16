// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seguimiento_vendedor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SeguimientoVendedor {

 int get segId; int get venId; DateTime get segFechaCreacion; double get segLatitud; double get segLongitud; String? get vendedorNombre;
/// Create a copy of SeguimientoVendedor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeguimientoVendedorCopyWith<SeguimientoVendedor> get copyWith => _$SeguimientoVendedorCopyWithImpl<SeguimientoVendedor>(this as SeguimientoVendedor, _$identity);

  /// Serializes this SeguimientoVendedor to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeguimientoVendedor&&(identical(other.segId, segId) || other.segId == segId)&&(identical(other.venId, venId) || other.venId == venId)&&(identical(other.segFechaCreacion, segFechaCreacion) || other.segFechaCreacion == segFechaCreacion)&&(identical(other.segLatitud, segLatitud) || other.segLatitud == segLatitud)&&(identical(other.segLongitud, segLongitud) || other.segLongitud == segLongitud)&&(identical(other.vendedorNombre, vendedorNombre) || other.vendedorNombre == vendedorNombre));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,segId,venId,segFechaCreacion,segLatitud,segLongitud,vendedorNombre);

@override
String toString() {
  return 'SeguimientoVendedor(segId: $segId, venId: $venId, segFechaCreacion: $segFechaCreacion, segLatitud: $segLatitud, segLongitud: $segLongitud, vendedorNombre: $vendedorNombre)';
}


}

/// @nodoc
abstract mixin class $SeguimientoVendedorCopyWith<$Res>  {
  factory $SeguimientoVendedorCopyWith(SeguimientoVendedor value, $Res Function(SeguimientoVendedor) _then) = _$SeguimientoVendedorCopyWithImpl;
@useResult
$Res call({
 int segId, int venId, DateTime segFechaCreacion, double segLatitud, double segLongitud, String? vendedorNombre
});




}
/// @nodoc
class _$SeguimientoVendedorCopyWithImpl<$Res>
    implements $SeguimientoVendedorCopyWith<$Res> {
  _$SeguimientoVendedorCopyWithImpl(this._self, this._then);

  final SeguimientoVendedor _self;
  final $Res Function(SeguimientoVendedor) _then;

/// Create a copy of SeguimientoVendedor
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


/// Adds pattern-matching-related methods to [SeguimientoVendedor].
extension SeguimientoVendedorPatterns on SeguimientoVendedor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SeguimientoVendedor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SeguimientoVendedor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SeguimientoVendedor value)  $default,){
final _that = this;
switch (_that) {
case _SeguimientoVendedor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SeguimientoVendedor value)?  $default,){
final _that = this;
switch (_that) {
case _SeguimientoVendedor() when $default != null:
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
case _SeguimientoVendedor() when $default != null:
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
case _SeguimientoVendedor():
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
case _SeguimientoVendedor() when $default != null:
return $default(_that.segId,_that.venId,_that.segFechaCreacion,_that.segLatitud,_that.segLongitud,_that.vendedorNombre);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SeguimientoVendedor implements SeguimientoVendedor {
  const _SeguimientoVendedor({required this.segId, required this.venId, required this.segFechaCreacion, required this.segLatitud, required this.segLongitud, required this.vendedorNombre});
  factory _SeguimientoVendedor.fromJson(Map<String, dynamic> json) => _$SeguimientoVendedorFromJson(json);

@override final  int segId;
@override final  int venId;
@override final  DateTime segFechaCreacion;
@override final  double segLatitud;
@override final  double segLongitud;
@override final  String? vendedorNombre;

/// Create a copy of SeguimientoVendedor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeguimientoVendedorCopyWith<_SeguimientoVendedor> get copyWith => __$SeguimientoVendedorCopyWithImpl<_SeguimientoVendedor>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeguimientoVendedorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SeguimientoVendedor&&(identical(other.segId, segId) || other.segId == segId)&&(identical(other.venId, venId) || other.venId == venId)&&(identical(other.segFechaCreacion, segFechaCreacion) || other.segFechaCreacion == segFechaCreacion)&&(identical(other.segLatitud, segLatitud) || other.segLatitud == segLatitud)&&(identical(other.segLongitud, segLongitud) || other.segLongitud == segLongitud)&&(identical(other.vendedorNombre, vendedorNombre) || other.vendedorNombre == vendedorNombre));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,segId,venId,segFechaCreacion,segLatitud,segLongitud,vendedorNombre);

@override
String toString() {
  return 'SeguimientoVendedor(segId: $segId, venId: $venId, segFechaCreacion: $segFechaCreacion, segLatitud: $segLatitud, segLongitud: $segLongitud, vendedorNombre: $vendedorNombre)';
}


}

/// @nodoc
abstract mixin class _$SeguimientoVendedorCopyWith<$Res> implements $SeguimientoVendedorCopyWith<$Res> {
  factory _$SeguimientoVendedorCopyWith(_SeguimientoVendedor value, $Res Function(_SeguimientoVendedor) _then) = __$SeguimientoVendedorCopyWithImpl;
@override @useResult
$Res call({
 int segId, int venId, DateTime segFechaCreacion, double segLatitud, double segLongitud, String? vendedorNombre
});




}
/// @nodoc
class __$SeguimientoVendedorCopyWithImpl<$Res>
    implements _$SeguimientoVendedorCopyWith<$Res> {
  __$SeguimientoVendedorCopyWithImpl(this._self, this._then);

  final _SeguimientoVendedor _self;
  final $Res Function(_SeguimientoVendedor) _then;

/// Create a copy of SeguimientoVendedor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? segId = null,Object? venId = null,Object? segFechaCreacion = null,Object? segLatitud = null,Object? segLongitud = null,Object? vendedorNombre = freezed,}) {
  return _then(_SeguimientoVendedor(
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
