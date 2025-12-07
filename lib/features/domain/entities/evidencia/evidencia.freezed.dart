// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evidencia.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Evidencia {

 int get eviId; int get visitaId; String? get eviTipo; String? get eviObservaciones;@JsonKey(ignore: true) DateTime? get eviFechaCreacion;
/// Create a copy of Evidencia
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EvidenciaCopyWith<Evidencia> get copyWith => _$EvidenciaCopyWithImpl<Evidencia>(this as Evidencia, _$identity);

  /// Serializes this Evidencia to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Evidencia&&(identical(other.eviId, eviId) || other.eviId == eviId)&&(identical(other.visitaId, visitaId) || other.visitaId == visitaId)&&(identical(other.eviTipo, eviTipo) || other.eviTipo == eviTipo)&&(identical(other.eviObservaciones, eviObservaciones) || other.eviObservaciones == eviObservaciones)&&(identical(other.eviFechaCreacion, eviFechaCreacion) || other.eviFechaCreacion == eviFechaCreacion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eviId,visitaId,eviTipo,eviObservaciones,eviFechaCreacion);

@override
String toString() {
  return 'Evidencia(eviId: $eviId, visitaId: $visitaId, eviTipo: $eviTipo, eviObservaciones: $eviObservaciones, eviFechaCreacion: $eviFechaCreacion)';
}


}

/// @nodoc
abstract mixin class $EvidenciaCopyWith<$Res>  {
  factory $EvidenciaCopyWith(Evidencia value, $Res Function(Evidencia) _then) = _$EvidenciaCopyWithImpl;
@useResult
$Res call({
 int eviId, int visitaId, String? eviTipo, String? eviObservaciones,@JsonKey(ignore: true) DateTime? eviFechaCreacion
});




}
/// @nodoc
class _$EvidenciaCopyWithImpl<$Res>
    implements $EvidenciaCopyWith<$Res> {
  _$EvidenciaCopyWithImpl(this._self, this._then);

  final Evidencia _self;
  final $Res Function(Evidencia) _then;

/// Create a copy of Evidencia
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eviId = null,Object? visitaId = null,Object? eviTipo = freezed,Object? eviObservaciones = freezed,Object? eviFechaCreacion = freezed,}) {
  return _then(_self.copyWith(
eviId: null == eviId ? _self.eviId : eviId // ignore: cast_nullable_to_non_nullable
as int,visitaId: null == visitaId ? _self.visitaId : visitaId // ignore: cast_nullable_to_non_nullable
as int,eviTipo: freezed == eviTipo ? _self.eviTipo : eviTipo // ignore: cast_nullable_to_non_nullable
as String?,eviObservaciones: freezed == eviObservaciones ? _self.eviObservaciones : eviObservaciones // ignore: cast_nullable_to_non_nullable
as String?,eviFechaCreacion: freezed == eviFechaCreacion ? _self.eviFechaCreacion : eviFechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Evidencia].
extension EvidenciaPatterns on Evidencia {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Evidencia value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Evidencia() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Evidencia value)  $default,){
final _that = this;
switch (_that) {
case _Evidencia():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Evidencia value)?  $default,){
final _that = this;
switch (_that) {
case _Evidencia() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eviId,  int visitaId,  String? eviTipo,  String? eviObservaciones, @JsonKey(ignore: true)  DateTime? eviFechaCreacion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Evidencia() when $default != null:
return $default(_that.eviId,_that.visitaId,_that.eviTipo,_that.eviObservaciones,_that.eviFechaCreacion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eviId,  int visitaId,  String? eviTipo,  String? eviObservaciones, @JsonKey(ignore: true)  DateTime? eviFechaCreacion)  $default,) {final _that = this;
switch (_that) {
case _Evidencia():
return $default(_that.eviId,_that.visitaId,_that.eviTipo,_that.eviObservaciones,_that.eviFechaCreacion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eviId,  int visitaId,  String? eviTipo,  String? eviObservaciones, @JsonKey(ignore: true)  DateTime? eviFechaCreacion)?  $default,) {final _that = this;
switch (_that) {
case _Evidencia() when $default != null:
return $default(_that.eviId,_that.visitaId,_that.eviTipo,_that.eviObservaciones,_that.eviFechaCreacion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Evidencia implements Evidencia {
  const _Evidencia({required this.eviId, required this.visitaId, required this.eviTipo, required this.eviObservaciones, @JsonKey(ignore: true) this.eviFechaCreacion});
  factory _Evidencia.fromJson(Map<String, dynamic> json) => _$EvidenciaFromJson(json);

@override final  int eviId;
@override final  int visitaId;
@override final  String? eviTipo;
@override final  String? eviObservaciones;
@override@JsonKey(ignore: true) final  DateTime? eviFechaCreacion;

/// Create a copy of Evidencia
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EvidenciaCopyWith<_Evidencia> get copyWith => __$EvidenciaCopyWithImpl<_Evidencia>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EvidenciaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Evidencia&&(identical(other.eviId, eviId) || other.eviId == eviId)&&(identical(other.visitaId, visitaId) || other.visitaId == visitaId)&&(identical(other.eviTipo, eviTipo) || other.eviTipo == eviTipo)&&(identical(other.eviObservaciones, eviObservaciones) || other.eviObservaciones == eviObservaciones)&&(identical(other.eviFechaCreacion, eviFechaCreacion) || other.eviFechaCreacion == eviFechaCreacion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eviId,visitaId,eviTipo,eviObservaciones,eviFechaCreacion);

@override
String toString() {
  return 'Evidencia(eviId: $eviId, visitaId: $visitaId, eviTipo: $eviTipo, eviObservaciones: $eviObservaciones, eviFechaCreacion: $eviFechaCreacion)';
}


}

/// @nodoc
abstract mixin class _$EvidenciaCopyWith<$Res> implements $EvidenciaCopyWith<$Res> {
  factory _$EvidenciaCopyWith(_Evidencia value, $Res Function(_Evidencia) _then) = __$EvidenciaCopyWithImpl;
@override @useResult
$Res call({
 int eviId, int visitaId, String? eviTipo, String? eviObservaciones,@JsonKey(ignore: true) DateTime? eviFechaCreacion
});




}
/// @nodoc
class __$EvidenciaCopyWithImpl<$Res>
    implements _$EvidenciaCopyWith<$Res> {
  __$EvidenciaCopyWithImpl(this._self, this._then);

  final _Evidencia _self;
  final $Res Function(_Evidencia) _then;

/// Create a copy of Evidencia
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eviId = null,Object? visitaId = null,Object? eviTipo = freezed,Object? eviObservaciones = freezed,Object? eviFechaCreacion = freezed,}) {
  return _then(_Evidencia(
eviId: null == eviId ? _self.eviId : eviId // ignore: cast_nullable_to_non_nullable
as int,visitaId: null == visitaId ? _self.visitaId : visitaId // ignore: cast_nullable_to_non_nullable
as int,eviTipo: freezed == eviTipo ? _self.eviTipo : eviTipo // ignore: cast_nullable_to_non_nullable
as String?,eviObservaciones: freezed == eviObservaciones ? _self.eviObservaciones : eviObservaciones // ignore: cast_nullable_to_non_nullable
as String?,eviFechaCreacion: freezed == eviFechaCreacion ? _self.eviFechaCreacion : eviFechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
