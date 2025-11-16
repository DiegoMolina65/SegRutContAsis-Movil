// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClienteDto {

 int get clId; String get clNombreCompleto; String get clCarnetIdentidad; String get clNitCliente; String? get clTipoCliente; String get clTelefono;
/// Create a copy of ClienteDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteDtoCopyWith<ClienteDto> get copyWith => _$ClienteDtoCopyWithImpl<ClienteDto>(this as ClienteDto, _$identity);

  /// Serializes this ClienteDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteDto&&(identical(other.clId, clId) || other.clId == clId)&&(identical(other.clNombreCompleto, clNombreCompleto) || other.clNombreCompleto == clNombreCompleto)&&(identical(other.clCarnetIdentidad, clCarnetIdentidad) || other.clCarnetIdentidad == clCarnetIdentidad)&&(identical(other.clNitCliente, clNitCliente) || other.clNitCliente == clNitCliente)&&(identical(other.clTipoCliente, clTipoCliente) || other.clTipoCliente == clTipoCliente)&&(identical(other.clTelefono, clTelefono) || other.clTelefono == clTelefono));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clId,clNombreCompleto,clCarnetIdentidad,clNitCliente,clTipoCliente,clTelefono);

@override
String toString() {
  return 'ClienteDto(clId: $clId, clNombreCompleto: $clNombreCompleto, clCarnetIdentidad: $clCarnetIdentidad, clNitCliente: $clNitCliente, clTipoCliente: $clTipoCliente, clTelefono: $clTelefono)';
}


}

/// @nodoc
abstract mixin class $ClienteDtoCopyWith<$Res>  {
  factory $ClienteDtoCopyWith(ClienteDto value, $Res Function(ClienteDto) _then) = _$ClienteDtoCopyWithImpl;
@useResult
$Res call({
 int clId, String clNombreCompleto, String clCarnetIdentidad, String clNitCliente, String? clTipoCliente, String clTelefono
});




}
/// @nodoc
class _$ClienteDtoCopyWithImpl<$Res>
    implements $ClienteDtoCopyWith<$Res> {
  _$ClienteDtoCopyWithImpl(this._self, this._then);

  final ClienteDto _self;
  final $Res Function(ClienteDto) _then;

/// Create a copy of ClienteDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clId = null,Object? clNombreCompleto = null,Object? clCarnetIdentidad = null,Object? clNitCliente = null,Object? clTipoCliente = freezed,Object? clTelefono = null,}) {
  return _then(_self.copyWith(
clId: null == clId ? _self.clId : clId // ignore: cast_nullable_to_non_nullable
as int,clNombreCompleto: null == clNombreCompleto ? _self.clNombreCompleto : clNombreCompleto // ignore: cast_nullable_to_non_nullable
as String,clCarnetIdentidad: null == clCarnetIdentidad ? _self.clCarnetIdentidad : clCarnetIdentidad // ignore: cast_nullable_to_non_nullable
as String,clNitCliente: null == clNitCliente ? _self.clNitCliente : clNitCliente // ignore: cast_nullable_to_non_nullable
as String,clTipoCliente: freezed == clTipoCliente ? _self.clTipoCliente : clTipoCliente // ignore: cast_nullable_to_non_nullable
as String?,clTelefono: null == clTelefono ? _self.clTelefono : clTelefono // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteDto].
extension ClienteDtoPatterns on ClienteDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteDto value)  $default,){
final _that = this;
switch (_that) {
case _ClienteDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteDto value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int clId,  String clNombreCompleto,  String clCarnetIdentidad,  String clNitCliente,  String? clTipoCliente,  String clTelefono)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteDto() when $default != null:
return $default(_that.clId,_that.clNombreCompleto,_that.clCarnetIdentidad,_that.clNitCliente,_that.clTipoCliente,_that.clTelefono);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int clId,  String clNombreCompleto,  String clCarnetIdentidad,  String clNitCliente,  String? clTipoCliente,  String clTelefono)  $default,) {final _that = this;
switch (_that) {
case _ClienteDto():
return $default(_that.clId,_that.clNombreCompleto,_that.clCarnetIdentidad,_that.clNitCliente,_that.clTipoCliente,_that.clTelefono);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int clId,  String clNombreCompleto,  String clCarnetIdentidad,  String clNitCliente,  String? clTipoCliente,  String clTelefono)?  $default,) {final _that = this;
switch (_that) {
case _ClienteDto() when $default != null:
return $default(_that.clId,_that.clNombreCompleto,_that.clCarnetIdentidad,_that.clNitCliente,_that.clTipoCliente,_that.clTelefono);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClienteDto implements ClienteDto {
  const _ClienteDto({required this.clId, required this.clNombreCompleto, required this.clCarnetIdentidad, required this.clNitCliente, required this.clTipoCliente, required this.clTelefono});
  factory _ClienteDto.fromJson(Map<String, dynamic> json) => _$ClienteDtoFromJson(json);

@override final  int clId;
@override final  String clNombreCompleto;
@override final  String clCarnetIdentidad;
@override final  String clNitCliente;
@override final  String? clTipoCliente;
@override final  String clTelefono;

/// Create a copy of ClienteDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteDtoCopyWith<_ClienteDto> get copyWith => __$ClienteDtoCopyWithImpl<_ClienteDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClienteDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteDto&&(identical(other.clId, clId) || other.clId == clId)&&(identical(other.clNombreCompleto, clNombreCompleto) || other.clNombreCompleto == clNombreCompleto)&&(identical(other.clCarnetIdentidad, clCarnetIdentidad) || other.clCarnetIdentidad == clCarnetIdentidad)&&(identical(other.clNitCliente, clNitCliente) || other.clNitCliente == clNitCliente)&&(identical(other.clTipoCliente, clTipoCliente) || other.clTipoCliente == clTipoCliente)&&(identical(other.clTelefono, clTelefono) || other.clTelefono == clTelefono));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clId,clNombreCompleto,clCarnetIdentidad,clNitCliente,clTipoCliente,clTelefono);

@override
String toString() {
  return 'ClienteDto(clId: $clId, clNombreCompleto: $clNombreCompleto, clCarnetIdentidad: $clCarnetIdentidad, clNitCliente: $clNitCliente, clTipoCliente: $clTipoCliente, clTelefono: $clTelefono)';
}


}

/// @nodoc
abstract mixin class _$ClienteDtoCopyWith<$Res> implements $ClienteDtoCopyWith<$Res> {
  factory _$ClienteDtoCopyWith(_ClienteDto value, $Res Function(_ClienteDto) _then) = __$ClienteDtoCopyWithImpl;
@override @useResult
$Res call({
 int clId, String clNombreCompleto, String clCarnetIdentidad, String clNitCliente, String? clTipoCliente, String clTelefono
});




}
/// @nodoc
class __$ClienteDtoCopyWithImpl<$Res>
    implements _$ClienteDtoCopyWith<$Res> {
  __$ClienteDtoCopyWithImpl(this._self, this._then);

  final _ClienteDto _self;
  final $Res Function(_ClienteDto) _then;

/// Create a copy of ClienteDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clId = null,Object? clNombreCompleto = null,Object? clCarnetIdentidad = null,Object? clNitCliente = null,Object? clTipoCliente = freezed,Object? clTelefono = null,}) {
  return _then(_ClienteDto(
clId: null == clId ? _self.clId : clId // ignore: cast_nullable_to_non_nullable
as int,clNombreCompleto: null == clNombreCompleto ? _self.clNombreCompleto : clNombreCompleto // ignore: cast_nullable_to_non_nullable
as String,clCarnetIdentidad: null == clCarnetIdentidad ? _self.clCarnetIdentidad : clCarnetIdentidad // ignore: cast_nullable_to_non_nullable
as String,clNitCliente: null == clNitCliente ? _self.clNitCliente : clNitCliente // ignore: cast_nullable_to_non_nullable
as String,clTipoCliente: freezed == clTipoCliente ? _self.clTipoCliente : clTipoCliente // ignore: cast_nullable_to_non_nullable
as String?,clTelefono: null == clTelefono ? _self.clTelefono : clTelefono // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
