// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zona.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Zona {

 int get zonId; String get zonNombre; String get zonDescripcion; DateTime get zonFechaCreacion; bool get zonEstadoDel;
/// Create a copy of Zona
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZonaCopyWith<Zona> get copyWith => _$ZonaCopyWithImpl<Zona>(this as Zona, _$identity);

  /// Serializes this Zona to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Zona&&(identical(other.zonId, zonId) || other.zonId == zonId)&&(identical(other.zonNombre, zonNombre) || other.zonNombre == zonNombre)&&(identical(other.zonDescripcion, zonDescripcion) || other.zonDescripcion == zonDescripcion)&&(identical(other.zonFechaCreacion, zonFechaCreacion) || other.zonFechaCreacion == zonFechaCreacion)&&(identical(other.zonEstadoDel, zonEstadoDel) || other.zonEstadoDel == zonEstadoDel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,zonId,zonNombre,zonDescripcion,zonFechaCreacion,zonEstadoDel);

@override
String toString() {
  return 'Zona(zonId: $zonId, zonNombre: $zonNombre, zonDescripcion: $zonDescripcion, zonFechaCreacion: $zonFechaCreacion, zonEstadoDel: $zonEstadoDel)';
}


}

/// @nodoc
abstract mixin class $ZonaCopyWith<$Res>  {
  factory $ZonaCopyWith(Zona value, $Res Function(Zona) _then) = _$ZonaCopyWithImpl;
@useResult
$Res call({
 int zonId, String zonNombre, String zonDescripcion, DateTime zonFechaCreacion, bool zonEstadoDel
});




}
/// @nodoc
class _$ZonaCopyWithImpl<$Res>
    implements $ZonaCopyWith<$Res> {
  _$ZonaCopyWithImpl(this._self, this._then);

  final Zona _self;
  final $Res Function(Zona) _then;

/// Create a copy of Zona
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? zonId = null,Object? zonNombre = null,Object? zonDescripcion = null,Object? zonFechaCreacion = null,Object? zonEstadoDel = null,}) {
  return _then(_self.copyWith(
zonId: null == zonId ? _self.zonId : zonId // ignore: cast_nullable_to_non_nullable
as int,zonNombre: null == zonNombre ? _self.zonNombre : zonNombre // ignore: cast_nullable_to_non_nullable
as String,zonDescripcion: null == zonDescripcion ? _self.zonDescripcion : zonDescripcion // ignore: cast_nullable_to_non_nullable
as String,zonFechaCreacion: null == zonFechaCreacion ? _self.zonFechaCreacion : zonFechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime,zonEstadoDel: null == zonEstadoDel ? _self.zonEstadoDel : zonEstadoDel // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Zona].
extension ZonaPatterns on Zona {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Zona value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Zona() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Zona value)  $default,){
final _that = this;
switch (_that) {
case _Zona():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Zona value)?  $default,){
final _that = this;
switch (_that) {
case _Zona() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int zonId,  String zonNombre,  String zonDescripcion,  DateTime zonFechaCreacion,  bool zonEstadoDel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Zona() when $default != null:
return $default(_that.zonId,_that.zonNombre,_that.zonDescripcion,_that.zonFechaCreacion,_that.zonEstadoDel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int zonId,  String zonNombre,  String zonDescripcion,  DateTime zonFechaCreacion,  bool zonEstadoDel)  $default,) {final _that = this;
switch (_that) {
case _Zona():
return $default(_that.zonId,_that.zonNombre,_that.zonDescripcion,_that.zonFechaCreacion,_that.zonEstadoDel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int zonId,  String zonNombre,  String zonDescripcion,  DateTime zonFechaCreacion,  bool zonEstadoDel)?  $default,) {final _that = this;
switch (_that) {
case _Zona() when $default != null:
return $default(_that.zonId,_that.zonNombre,_that.zonDescripcion,_that.zonFechaCreacion,_that.zonEstadoDel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Zona implements Zona {
  const _Zona({required this.zonId, required this.zonNombre, required this.zonDescripcion, required this.zonFechaCreacion, required this.zonEstadoDel});
  factory _Zona.fromJson(Map<String, dynamic> json) => _$ZonaFromJson(json);

@override final  int zonId;
@override final  String zonNombre;
@override final  String zonDescripcion;
@override final  DateTime zonFechaCreacion;
@override final  bool zonEstadoDel;

/// Create a copy of Zona
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZonaCopyWith<_Zona> get copyWith => __$ZonaCopyWithImpl<_Zona>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZonaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Zona&&(identical(other.zonId, zonId) || other.zonId == zonId)&&(identical(other.zonNombre, zonNombre) || other.zonNombre == zonNombre)&&(identical(other.zonDescripcion, zonDescripcion) || other.zonDescripcion == zonDescripcion)&&(identical(other.zonFechaCreacion, zonFechaCreacion) || other.zonFechaCreacion == zonFechaCreacion)&&(identical(other.zonEstadoDel, zonEstadoDel) || other.zonEstadoDel == zonEstadoDel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,zonId,zonNombre,zonDescripcion,zonFechaCreacion,zonEstadoDel);

@override
String toString() {
  return 'Zona(zonId: $zonId, zonNombre: $zonNombre, zonDescripcion: $zonDescripcion, zonFechaCreacion: $zonFechaCreacion, zonEstadoDel: $zonEstadoDel)';
}


}

/// @nodoc
abstract mixin class _$ZonaCopyWith<$Res> implements $ZonaCopyWith<$Res> {
  factory _$ZonaCopyWith(_Zona value, $Res Function(_Zona) _then) = __$ZonaCopyWithImpl;
@override @useResult
$Res call({
 int zonId, String zonNombre, String zonDescripcion, DateTime zonFechaCreacion, bool zonEstadoDel
});




}
/// @nodoc
class __$ZonaCopyWithImpl<$Res>
    implements _$ZonaCopyWith<$Res> {
  __$ZonaCopyWithImpl(this._self, this._then);

  final _Zona _self;
  final $Res Function(_Zona) _then;

/// Create a copy of Zona
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? zonId = null,Object? zonNombre = null,Object? zonDescripcion = null,Object? zonFechaCreacion = null,Object? zonEstadoDel = null,}) {
  return _then(_Zona(
zonId: null == zonId ? _self.zonId : zonId // ignore: cast_nullable_to_non_nullable
as int,zonNombre: null == zonNombre ? _self.zonNombre : zonNombre // ignore: cast_nullable_to_non_nullable
as String,zonDescripcion: null == zonDescripcion ? _self.zonDescripcion : zonDescripcion // ignore: cast_nullable_to_non_nullable
as String,zonFechaCreacion: null == zonFechaCreacion ? _self.zonFechaCreacion : zonFechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime,zonEstadoDel: null == zonEstadoDel ? _self.zonEstadoDel : zonEstadoDel // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
