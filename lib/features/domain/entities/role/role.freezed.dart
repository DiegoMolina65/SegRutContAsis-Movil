// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Role {

 int? get rolId; String? get rolNombre; String? get rolDescripcion;
/// Create a copy of Role
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoleCopyWith<Role> get copyWith => _$RoleCopyWithImpl<Role>(this as Role, _$identity);

  /// Serializes this Role to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Role&&(identical(other.rolId, rolId) || other.rolId == rolId)&&(identical(other.rolNombre, rolNombre) || other.rolNombre == rolNombre)&&(identical(other.rolDescripcion, rolDescripcion) || other.rolDescripcion == rolDescripcion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rolId,rolNombre,rolDescripcion);

@override
String toString() {
  return 'Role(rolId: $rolId, rolNombre: $rolNombre, rolDescripcion: $rolDescripcion)';
}


}

/// @nodoc
abstract mixin class $RoleCopyWith<$Res>  {
  factory $RoleCopyWith(Role value, $Res Function(Role) _then) = _$RoleCopyWithImpl;
@useResult
$Res call({
 int? rolId, String? rolNombre, String? rolDescripcion
});




}
/// @nodoc
class _$RoleCopyWithImpl<$Res>
    implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._self, this._then);

  final Role _self;
  final $Res Function(Role) _then;

/// Create a copy of Role
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rolId = freezed,Object? rolNombre = freezed,Object? rolDescripcion = freezed,}) {
  return _then(_self.copyWith(
rolId: freezed == rolId ? _self.rolId : rolId // ignore: cast_nullable_to_non_nullable
as int?,rolNombre: freezed == rolNombre ? _self.rolNombre : rolNombre // ignore: cast_nullable_to_non_nullable
as String?,rolDescripcion: freezed == rolDescripcion ? _self.rolDescripcion : rolDescripcion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Role].
extension RolePatterns on Role {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Role value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Role() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Role value)  $default,){
final _that = this;
switch (_that) {
case _Role():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Role value)?  $default,){
final _that = this;
switch (_that) {
case _Role() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? rolId,  String? rolNombre,  String? rolDescripcion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Role() when $default != null:
return $default(_that.rolId,_that.rolNombre,_that.rolDescripcion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? rolId,  String? rolNombre,  String? rolDescripcion)  $default,) {final _that = this;
switch (_that) {
case _Role():
return $default(_that.rolId,_that.rolNombre,_that.rolDescripcion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? rolId,  String? rolNombre,  String? rolDescripcion)?  $default,) {final _that = this;
switch (_that) {
case _Role() when $default != null:
return $default(_that.rolId,_that.rolNombre,_that.rolDescripcion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Role implements Role {
  const _Role({required this.rolId, required this.rolNombre, required this.rolDescripcion});
  factory _Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

@override final  int? rolId;
@override final  String? rolNombre;
@override final  String? rolDescripcion;

/// Create a copy of Role
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoleCopyWith<_Role> get copyWith => __$RoleCopyWithImpl<_Role>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Role&&(identical(other.rolId, rolId) || other.rolId == rolId)&&(identical(other.rolNombre, rolNombre) || other.rolNombre == rolNombre)&&(identical(other.rolDescripcion, rolDescripcion) || other.rolDescripcion == rolDescripcion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rolId,rolNombre,rolDescripcion);

@override
String toString() {
  return 'Role(rolId: $rolId, rolNombre: $rolNombre, rolDescripcion: $rolDescripcion)';
}


}

/// @nodoc
abstract mixin class _$RoleCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$RoleCopyWith(_Role value, $Res Function(_Role) _then) = __$RoleCopyWithImpl;
@override @useResult
$Res call({
 int? rolId, String? rolNombre, String? rolDescripcion
});




}
/// @nodoc
class __$RoleCopyWithImpl<$Res>
    implements _$RoleCopyWith<$Res> {
  __$RoleCopyWithImpl(this._self, this._then);

  final _Role _self;
  final $Res Function(_Role) _then;

/// Create a copy of Role
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rolId = freezed,Object? rolNombre = freezed,Object? rolDescripcion = freezed,}) {
  return _then(_Role(
rolId: freezed == rolId ? _self.rolId : rolId // ignore: cast_nullable_to_non_nullable
as int?,rolNombre: freezed == rolNombre ? _self.rolNombre : rolNombre // ignore: cast_nullable_to_non_nullable
as String?,rolDescripcion: freezed == rolDescripcion ? _self.rolDescripcion : rolDescripcion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
