// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asistencia.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Asistencia {

 int get asiId; int get venId; DateTime get asiHoraEntrada; DateTime get asiHoraSalida; double get asiLatitud; double get asiLongitud; String get nombreVendedor;
/// Create a copy of Asistencia
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AsistenciaCopyWith<Asistencia> get copyWith => _$AsistenciaCopyWithImpl<Asistencia>(this as Asistencia, _$identity);

  /// Serializes this Asistencia to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Asistencia&&(identical(other.asiId, asiId) || other.asiId == asiId)&&(identical(other.venId, venId) || other.venId == venId)&&(identical(other.asiHoraEntrada, asiHoraEntrada) || other.asiHoraEntrada == asiHoraEntrada)&&(identical(other.asiHoraSalida, asiHoraSalida) || other.asiHoraSalida == asiHoraSalida)&&(identical(other.asiLatitud, asiLatitud) || other.asiLatitud == asiLatitud)&&(identical(other.asiLongitud, asiLongitud) || other.asiLongitud == asiLongitud)&&(identical(other.nombreVendedor, nombreVendedor) || other.nombreVendedor == nombreVendedor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,asiId,venId,asiHoraEntrada,asiHoraSalida,asiLatitud,asiLongitud,nombreVendedor);

@override
String toString() {
  return 'Asistencia(asiId: $asiId, venId: $venId, asiHoraEntrada: $asiHoraEntrada, asiHoraSalida: $asiHoraSalida, asiLatitud: $asiLatitud, asiLongitud: $asiLongitud, nombreVendedor: $nombreVendedor)';
}


}

/// @nodoc
abstract mixin class $AsistenciaCopyWith<$Res>  {
  factory $AsistenciaCopyWith(Asistencia value, $Res Function(Asistencia) _then) = _$AsistenciaCopyWithImpl;
@useResult
$Res call({
 int asiId, int venId, DateTime asiHoraEntrada, DateTime asiHoraSalida, double asiLatitud, double asiLongitud, String nombreVendedor
});




}
/// @nodoc
class _$AsistenciaCopyWithImpl<$Res>
    implements $AsistenciaCopyWith<$Res> {
  _$AsistenciaCopyWithImpl(this._self, this._then);

  final Asistencia _self;
  final $Res Function(Asistencia) _then;

/// Create a copy of Asistencia
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? asiId = null,Object? venId = null,Object? asiHoraEntrada = null,Object? asiHoraSalida = null,Object? asiLatitud = null,Object? asiLongitud = null,Object? nombreVendedor = null,}) {
  return _then(_self.copyWith(
asiId: null == asiId ? _self.asiId : asiId // ignore: cast_nullable_to_non_nullable
as int,venId: null == venId ? _self.venId : venId // ignore: cast_nullable_to_non_nullable
as int,asiHoraEntrada: null == asiHoraEntrada ? _self.asiHoraEntrada : asiHoraEntrada // ignore: cast_nullable_to_non_nullable
as DateTime,asiHoraSalida: null == asiHoraSalida ? _self.asiHoraSalida : asiHoraSalida // ignore: cast_nullable_to_non_nullable
as DateTime,asiLatitud: null == asiLatitud ? _self.asiLatitud : asiLatitud // ignore: cast_nullable_to_non_nullable
as double,asiLongitud: null == asiLongitud ? _self.asiLongitud : asiLongitud // ignore: cast_nullable_to_non_nullable
as double,nombreVendedor: null == nombreVendedor ? _self.nombreVendedor : nombreVendedor // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Asistencia].
extension AsistenciaPatterns on Asistencia {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Asistencia value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Asistencia() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Asistencia value)  $default,){
final _that = this;
switch (_that) {
case _Asistencia():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Asistencia value)?  $default,){
final _that = this;
switch (_that) {
case _Asistencia() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int asiId,  int venId,  DateTime asiHoraEntrada,  DateTime asiHoraSalida,  double asiLatitud,  double asiLongitud,  String nombreVendedor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Asistencia() when $default != null:
return $default(_that.asiId,_that.venId,_that.asiHoraEntrada,_that.asiHoraSalida,_that.asiLatitud,_that.asiLongitud,_that.nombreVendedor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int asiId,  int venId,  DateTime asiHoraEntrada,  DateTime asiHoraSalida,  double asiLatitud,  double asiLongitud,  String nombreVendedor)  $default,) {final _that = this;
switch (_that) {
case _Asistencia():
return $default(_that.asiId,_that.venId,_that.asiHoraEntrada,_that.asiHoraSalida,_that.asiLatitud,_that.asiLongitud,_that.nombreVendedor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int asiId,  int venId,  DateTime asiHoraEntrada,  DateTime asiHoraSalida,  double asiLatitud,  double asiLongitud,  String nombreVendedor)?  $default,) {final _that = this;
switch (_that) {
case _Asistencia() when $default != null:
return $default(_that.asiId,_that.venId,_that.asiHoraEntrada,_that.asiHoraSalida,_that.asiLatitud,_that.asiLongitud,_that.nombreVendedor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Asistencia implements Asistencia {
  const _Asistencia({required this.asiId, required this.venId, required this.asiHoraEntrada, required this.asiHoraSalida, required this.asiLatitud, required this.asiLongitud, required this.nombreVendedor});
  factory _Asistencia.fromJson(Map<String, dynamic> json) => _$AsistenciaFromJson(json);

@override final  int asiId;
@override final  int venId;
@override final  DateTime asiHoraEntrada;
@override final  DateTime asiHoraSalida;
@override final  double asiLatitud;
@override final  double asiLongitud;
@override final  String nombreVendedor;

/// Create a copy of Asistencia
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AsistenciaCopyWith<_Asistencia> get copyWith => __$AsistenciaCopyWithImpl<_Asistencia>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AsistenciaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Asistencia&&(identical(other.asiId, asiId) || other.asiId == asiId)&&(identical(other.venId, venId) || other.venId == venId)&&(identical(other.asiHoraEntrada, asiHoraEntrada) || other.asiHoraEntrada == asiHoraEntrada)&&(identical(other.asiHoraSalida, asiHoraSalida) || other.asiHoraSalida == asiHoraSalida)&&(identical(other.asiLatitud, asiLatitud) || other.asiLatitud == asiLatitud)&&(identical(other.asiLongitud, asiLongitud) || other.asiLongitud == asiLongitud)&&(identical(other.nombreVendedor, nombreVendedor) || other.nombreVendedor == nombreVendedor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,asiId,venId,asiHoraEntrada,asiHoraSalida,asiLatitud,asiLongitud,nombreVendedor);

@override
String toString() {
  return 'Asistencia(asiId: $asiId, venId: $venId, asiHoraEntrada: $asiHoraEntrada, asiHoraSalida: $asiHoraSalida, asiLatitud: $asiLatitud, asiLongitud: $asiLongitud, nombreVendedor: $nombreVendedor)';
}


}

/// @nodoc
abstract mixin class _$AsistenciaCopyWith<$Res> implements $AsistenciaCopyWith<$Res> {
  factory _$AsistenciaCopyWith(_Asistencia value, $Res Function(_Asistencia) _then) = __$AsistenciaCopyWithImpl;
@override @useResult
$Res call({
 int asiId, int venId, DateTime asiHoraEntrada, DateTime asiHoraSalida, double asiLatitud, double asiLongitud, String nombreVendedor
});




}
/// @nodoc
class __$AsistenciaCopyWithImpl<$Res>
    implements _$AsistenciaCopyWith<$Res> {
  __$AsistenciaCopyWithImpl(this._self, this._then);

  final _Asistencia _self;
  final $Res Function(_Asistencia) _then;

/// Create a copy of Asistencia
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? asiId = null,Object? venId = null,Object? asiHoraEntrada = null,Object? asiHoraSalida = null,Object? asiLatitud = null,Object? asiLongitud = null,Object? nombreVendedor = null,}) {
  return _then(_Asistencia(
asiId: null == asiId ? _self.asiId : asiId // ignore: cast_nullable_to_non_nullable
as int,venId: null == venId ? _self.venId : venId // ignore: cast_nullable_to_non_nullable
as int,asiHoraEntrada: null == asiHoraEntrada ? _self.asiHoraEntrada : asiHoraEntrada // ignore: cast_nullable_to_non_nullable
as DateTime,asiHoraSalida: null == asiHoraSalida ? _self.asiHoraSalida : asiHoraSalida // ignore: cast_nullable_to_non_nullable
as DateTime,asiLatitud: null == asiLatitud ? _self.asiLatitud : asiLatitud // ignore: cast_nullable_to_non_nullable
as double,asiLongitud: null == asiLongitud ? _self.asiLongitud : asiLongitud // ignore: cast_nullable_to_non_nullable
as double,nombreVendedor: null == nombreVendedor ? _self.nombreVendedor : nombreVendedor // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
