// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ruta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Ruta {

 int get rutId; int get venId; int get supId; String get rutNombre; String get rutComentario; DateTime get rutFechaEjecucion; String get nombreVendedor; String? get nombreSupervisor;
/// Create a copy of Ruta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RutaCopyWith<Ruta> get copyWith => _$RutaCopyWithImpl<Ruta>(this as Ruta, _$identity);

  /// Serializes this Ruta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ruta&&(identical(other.rutId, rutId) || other.rutId == rutId)&&(identical(other.venId, venId) || other.venId == venId)&&(identical(other.supId, supId) || other.supId == supId)&&(identical(other.rutNombre, rutNombre) || other.rutNombre == rutNombre)&&(identical(other.rutComentario, rutComentario) || other.rutComentario == rutComentario)&&(identical(other.rutFechaEjecucion, rutFechaEjecucion) || other.rutFechaEjecucion == rutFechaEjecucion)&&(identical(other.nombreVendedor, nombreVendedor) || other.nombreVendedor == nombreVendedor)&&(identical(other.nombreSupervisor, nombreSupervisor) || other.nombreSupervisor == nombreSupervisor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rutId,venId,supId,rutNombre,rutComentario,rutFechaEjecucion,nombreVendedor,nombreSupervisor);

@override
String toString() {
  return 'Ruta(rutId: $rutId, venId: $venId, supId: $supId, rutNombre: $rutNombre, rutComentario: $rutComentario, rutFechaEjecucion: $rutFechaEjecucion, nombreVendedor: $nombreVendedor, nombreSupervisor: $nombreSupervisor)';
}


}

/// @nodoc
abstract mixin class $RutaCopyWith<$Res>  {
  factory $RutaCopyWith(Ruta value, $Res Function(Ruta) _then) = _$RutaCopyWithImpl;
@useResult
$Res call({
 int rutId, int venId, int supId, String rutNombre, String rutComentario, DateTime rutFechaEjecucion, String nombreVendedor, String? nombreSupervisor
});




}
/// @nodoc
class _$RutaCopyWithImpl<$Res>
    implements $RutaCopyWith<$Res> {
  _$RutaCopyWithImpl(this._self, this._then);

  final Ruta _self;
  final $Res Function(Ruta) _then;

/// Create a copy of Ruta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rutId = null,Object? venId = null,Object? supId = null,Object? rutNombre = null,Object? rutComentario = null,Object? rutFechaEjecucion = null,Object? nombreVendedor = null,Object? nombreSupervisor = freezed,}) {
  return _then(_self.copyWith(
rutId: null == rutId ? _self.rutId : rutId // ignore: cast_nullable_to_non_nullable
as int,venId: null == venId ? _self.venId : venId // ignore: cast_nullable_to_non_nullable
as int,supId: null == supId ? _self.supId : supId // ignore: cast_nullable_to_non_nullable
as int,rutNombre: null == rutNombre ? _self.rutNombre : rutNombre // ignore: cast_nullable_to_non_nullable
as String,rutComentario: null == rutComentario ? _self.rutComentario : rutComentario // ignore: cast_nullable_to_non_nullable
as String,rutFechaEjecucion: null == rutFechaEjecucion ? _self.rutFechaEjecucion : rutFechaEjecucion // ignore: cast_nullable_to_non_nullable
as DateTime,nombreVendedor: null == nombreVendedor ? _self.nombreVendedor : nombreVendedor // ignore: cast_nullable_to_non_nullable
as String,nombreSupervisor: freezed == nombreSupervisor ? _self.nombreSupervisor : nombreSupervisor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Ruta].
extension RutaPatterns on Ruta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Ruta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ruta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Ruta value)  $default,){
final _that = this;
switch (_that) {
case _Ruta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Ruta value)?  $default,){
final _that = this;
switch (_that) {
case _Ruta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int rutId,  int venId,  int supId,  String rutNombre,  String rutComentario,  DateTime rutFechaEjecucion,  String nombreVendedor,  String? nombreSupervisor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ruta() when $default != null:
return $default(_that.rutId,_that.venId,_that.supId,_that.rutNombre,_that.rutComentario,_that.rutFechaEjecucion,_that.nombreVendedor,_that.nombreSupervisor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int rutId,  int venId,  int supId,  String rutNombre,  String rutComentario,  DateTime rutFechaEjecucion,  String nombreVendedor,  String? nombreSupervisor)  $default,) {final _that = this;
switch (_that) {
case _Ruta():
return $default(_that.rutId,_that.venId,_that.supId,_that.rutNombre,_that.rutComentario,_that.rutFechaEjecucion,_that.nombreVendedor,_that.nombreSupervisor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int rutId,  int venId,  int supId,  String rutNombre,  String rutComentario,  DateTime rutFechaEjecucion,  String nombreVendedor,  String? nombreSupervisor)?  $default,) {final _that = this;
switch (_that) {
case _Ruta() when $default != null:
return $default(_that.rutId,_that.venId,_that.supId,_that.rutNombre,_that.rutComentario,_that.rutFechaEjecucion,_that.nombreVendedor,_that.nombreSupervisor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Ruta implements Ruta {
  const _Ruta({required this.rutId, required this.venId, required this.supId, required this.rutNombre, required this.rutComentario, required this.rutFechaEjecucion, required this.nombreVendedor, required this.nombreSupervisor});
  factory _Ruta.fromJson(Map<String, dynamic> json) => _$RutaFromJson(json);

@override final  int rutId;
@override final  int venId;
@override final  int supId;
@override final  String rutNombre;
@override final  String rutComentario;
@override final  DateTime rutFechaEjecucion;
@override final  String nombreVendedor;
@override final  String? nombreSupervisor;

/// Create a copy of Ruta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RutaCopyWith<_Ruta> get copyWith => __$RutaCopyWithImpl<_Ruta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RutaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ruta&&(identical(other.rutId, rutId) || other.rutId == rutId)&&(identical(other.venId, venId) || other.venId == venId)&&(identical(other.supId, supId) || other.supId == supId)&&(identical(other.rutNombre, rutNombre) || other.rutNombre == rutNombre)&&(identical(other.rutComentario, rutComentario) || other.rutComentario == rutComentario)&&(identical(other.rutFechaEjecucion, rutFechaEjecucion) || other.rutFechaEjecucion == rutFechaEjecucion)&&(identical(other.nombreVendedor, nombreVendedor) || other.nombreVendedor == nombreVendedor)&&(identical(other.nombreSupervisor, nombreSupervisor) || other.nombreSupervisor == nombreSupervisor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rutId,venId,supId,rutNombre,rutComentario,rutFechaEjecucion,nombreVendedor,nombreSupervisor);

@override
String toString() {
  return 'Ruta(rutId: $rutId, venId: $venId, supId: $supId, rutNombre: $rutNombre, rutComentario: $rutComentario, rutFechaEjecucion: $rutFechaEjecucion, nombreVendedor: $nombreVendedor, nombreSupervisor: $nombreSupervisor)';
}


}

/// @nodoc
abstract mixin class _$RutaCopyWith<$Res> implements $RutaCopyWith<$Res> {
  factory _$RutaCopyWith(_Ruta value, $Res Function(_Ruta) _then) = __$RutaCopyWithImpl;
@override @useResult
$Res call({
 int rutId, int venId, int supId, String rutNombre, String rutComentario, DateTime rutFechaEjecucion, String nombreVendedor, String? nombreSupervisor
});




}
/// @nodoc
class __$RutaCopyWithImpl<$Res>
    implements _$RutaCopyWith<$Res> {
  __$RutaCopyWithImpl(this._self, this._then);

  final _Ruta _self;
  final $Res Function(_Ruta) _then;

/// Create a copy of Ruta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rutId = null,Object? venId = null,Object? supId = null,Object? rutNombre = null,Object? rutComentario = null,Object? rutFechaEjecucion = null,Object? nombreVendedor = null,Object? nombreSupervisor = freezed,}) {
  return _then(_Ruta(
rutId: null == rutId ? _self.rutId : rutId // ignore: cast_nullable_to_non_nullable
as int,venId: null == venId ? _self.venId : venId // ignore: cast_nullable_to_non_nullable
as int,supId: null == supId ? _self.supId : supId // ignore: cast_nullable_to_non_nullable
as int,rutNombre: null == rutNombre ? _self.rutNombre : rutNombre // ignore: cast_nullable_to_non_nullable
as String,rutComentario: null == rutComentario ? _self.rutComentario : rutComentario // ignore: cast_nullable_to_non_nullable
as String,rutFechaEjecucion: null == rutFechaEjecucion ? _self.rutFechaEjecucion : rutFechaEjecucion // ignore: cast_nullable_to_non_nullable
as DateTime,nombreVendedor: null == nombreVendedor ? _self.nombreVendedor : nombreVendedor // ignore: cast_nullable_to_non_nullable
as String,nombreSupervisor: freezed == nombreSupervisor ? _self.nombreSupervisor : nombreSupervisor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
