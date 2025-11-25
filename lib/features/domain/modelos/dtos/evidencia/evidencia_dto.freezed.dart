// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evidencia_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EvidenciaDto {

 int get eviId; DateTime get eviFechaCreacion; int get visitaId; String? get eviTipo; String? get eviObservaciones;
/// Create a copy of EvidenciaDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EvidenciaDtoCopyWith<EvidenciaDto> get copyWith => _$EvidenciaDtoCopyWithImpl<EvidenciaDto>(this as EvidenciaDto, _$identity);

  /// Serializes this EvidenciaDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvidenciaDto&&(identical(other.eviId, eviId) || other.eviId == eviId)&&(identical(other.eviFechaCreacion, eviFechaCreacion) || other.eviFechaCreacion == eviFechaCreacion)&&(identical(other.visitaId, visitaId) || other.visitaId == visitaId)&&(identical(other.eviTipo, eviTipo) || other.eviTipo == eviTipo)&&(identical(other.eviObservaciones, eviObservaciones) || other.eviObservaciones == eviObservaciones));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eviId,eviFechaCreacion,visitaId,eviTipo,eviObservaciones);

@override
String toString() {
  return 'EvidenciaDto(eviId: $eviId, eviFechaCreacion: $eviFechaCreacion, visitaId: $visitaId, eviTipo: $eviTipo, eviObservaciones: $eviObservaciones)';
}


}

/// @nodoc
abstract mixin class $EvidenciaDtoCopyWith<$Res>  {
  factory $EvidenciaDtoCopyWith(EvidenciaDto value, $Res Function(EvidenciaDto) _then) = _$EvidenciaDtoCopyWithImpl;
@useResult
$Res call({
 int eviId, DateTime eviFechaCreacion, int visitaId, String? eviTipo, String? eviObservaciones
});




}
/// @nodoc
class _$EvidenciaDtoCopyWithImpl<$Res>
    implements $EvidenciaDtoCopyWith<$Res> {
  _$EvidenciaDtoCopyWithImpl(this._self, this._then);

  final EvidenciaDto _self;
  final $Res Function(EvidenciaDto) _then;

/// Create a copy of EvidenciaDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eviId = null,Object? eviFechaCreacion = null,Object? visitaId = null,Object? eviTipo = freezed,Object? eviObservaciones = freezed,}) {
  return _then(_self.copyWith(
eviId: null == eviId ? _self.eviId : eviId // ignore: cast_nullable_to_non_nullable
as int,eviFechaCreacion: null == eviFechaCreacion ? _self.eviFechaCreacion : eviFechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime,visitaId: null == visitaId ? _self.visitaId : visitaId // ignore: cast_nullable_to_non_nullable
as int,eviTipo: freezed == eviTipo ? _self.eviTipo : eviTipo // ignore: cast_nullable_to_non_nullable
as String?,eviObservaciones: freezed == eviObservaciones ? _self.eviObservaciones : eviObservaciones // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EvidenciaDto].
extension EvidenciaDtoPatterns on EvidenciaDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EvidenciaDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EvidenciaDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EvidenciaDto value)  $default,){
final _that = this;
switch (_that) {
case _EvidenciaDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EvidenciaDto value)?  $default,){
final _that = this;
switch (_that) {
case _EvidenciaDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eviId,  DateTime eviFechaCreacion,  int visitaId,  String? eviTipo,  String? eviObservaciones)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EvidenciaDto() when $default != null:
return $default(_that.eviId,_that.eviFechaCreacion,_that.visitaId,_that.eviTipo,_that.eviObservaciones);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eviId,  DateTime eviFechaCreacion,  int visitaId,  String? eviTipo,  String? eviObservaciones)  $default,) {final _that = this;
switch (_that) {
case _EvidenciaDto():
return $default(_that.eviId,_that.eviFechaCreacion,_that.visitaId,_that.eviTipo,_that.eviObservaciones);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eviId,  DateTime eviFechaCreacion,  int visitaId,  String? eviTipo,  String? eviObservaciones)?  $default,) {final _that = this;
switch (_that) {
case _EvidenciaDto() when $default != null:
return $default(_that.eviId,_that.eviFechaCreacion,_that.visitaId,_that.eviTipo,_that.eviObservaciones);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EvidenciaDto implements EvidenciaDto {
  const _EvidenciaDto({required this.eviId, required this.eviFechaCreacion, required this.visitaId, required this.eviTipo, required this.eviObservaciones});
  factory _EvidenciaDto.fromJson(Map<String, dynamic> json) => _$EvidenciaDtoFromJson(json);

@override final  int eviId;
@override final  DateTime eviFechaCreacion;
@override final  int visitaId;
@override final  String? eviTipo;
@override final  String? eviObservaciones;

/// Create a copy of EvidenciaDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EvidenciaDtoCopyWith<_EvidenciaDto> get copyWith => __$EvidenciaDtoCopyWithImpl<_EvidenciaDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EvidenciaDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EvidenciaDto&&(identical(other.eviId, eviId) || other.eviId == eviId)&&(identical(other.eviFechaCreacion, eviFechaCreacion) || other.eviFechaCreacion == eviFechaCreacion)&&(identical(other.visitaId, visitaId) || other.visitaId == visitaId)&&(identical(other.eviTipo, eviTipo) || other.eviTipo == eviTipo)&&(identical(other.eviObservaciones, eviObservaciones) || other.eviObservaciones == eviObservaciones));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eviId,eviFechaCreacion,visitaId,eviTipo,eviObservaciones);

@override
String toString() {
  return 'EvidenciaDto(eviId: $eviId, eviFechaCreacion: $eviFechaCreacion, visitaId: $visitaId, eviTipo: $eviTipo, eviObservaciones: $eviObservaciones)';
}


}

/// @nodoc
abstract mixin class _$EvidenciaDtoCopyWith<$Res> implements $EvidenciaDtoCopyWith<$Res> {
  factory _$EvidenciaDtoCopyWith(_EvidenciaDto value, $Res Function(_EvidenciaDto) _then) = __$EvidenciaDtoCopyWithImpl;
@override @useResult
$Res call({
 int eviId, DateTime eviFechaCreacion, int visitaId, String? eviTipo, String? eviObservaciones
});




}
/// @nodoc
class __$EvidenciaDtoCopyWithImpl<$Res>
    implements _$EvidenciaDtoCopyWith<$Res> {
  __$EvidenciaDtoCopyWithImpl(this._self, this._then);

  final _EvidenciaDto _self;
  final $Res Function(_EvidenciaDto) _then;

/// Create a copy of EvidenciaDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eviId = null,Object? eviFechaCreacion = null,Object? visitaId = null,Object? eviTipo = freezed,Object? eviObservaciones = freezed,}) {
  return _then(_EvidenciaDto(
eviId: null == eviId ? _self.eviId : eviId // ignore: cast_nullable_to_non_nullable
as int,eviFechaCreacion: null == eviFechaCreacion ? _self.eviFechaCreacion : eviFechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime,visitaId: null == visitaId ? _self.visitaId : visitaId // ignore: cast_nullable_to_non_nullable
as int,eviTipo: freezed == eviTipo ? _self.eviTipo : eviTipo // ignore: cast_nullable_to_non_nullable
as String?,eviObservaciones: freezed == eviObservaciones ? _self.eviObservaciones : eviObservaciones // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
