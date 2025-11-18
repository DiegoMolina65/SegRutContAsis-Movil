// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usuario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Usuario {

 int get usrId; String get usrNombreCompleto; String? get usrCorreo; String? get usrTelefono; String? get usrNitEmpleado; String? get usrCarnetIdentidad; String? get usrUsuarioLog; String? get usrContrasenaLog; dynamic get token; bool get usrEstadoDel; List<Role> get roles; int? get vendedorId; int? get supervisorId; bool get esAdministrador; bool get esSupervisor; bool get esVendedor;
/// Create a copy of Usuario
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsuarioCopyWith<Usuario> get copyWith => _$UsuarioCopyWithImpl<Usuario>(this as Usuario, _$identity);

  /// Serializes this Usuario to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Usuario&&(identical(other.usrId, usrId) || other.usrId == usrId)&&(identical(other.usrNombreCompleto, usrNombreCompleto) || other.usrNombreCompleto == usrNombreCompleto)&&(identical(other.usrCorreo, usrCorreo) || other.usrCorreo == usrCorreo)&&(identical(other.usrTelefono, usrTelefono) || other.usrTelefono == usrTelefono)&&(identical(other.usrNitEmpleado, usrNitEmpleado) || other.usrNitEmpleado == usrNitEmpleado)&&(identical(other.usrCarnetIdentidad, usrCarnetIdentidad) || other.usrCarnetIdentidad == usrCarnetIdentidad)&&(identical(other.usrUsuarioLog, usrUsuarioLog) || other.usrUsuarioLog == usrUsuarioLog)&&(identical(other.usrContrasenaLog, usrContrasenaLog) || other.usrContrasenaLog == usrContrasenaLog)&&const DeepCollectionEquality().equals(other.token, token)&&(identical(other.usrEstadoDel, usrEstadoDel) || other.usrEstadoDel == usrEstadoDel)&&const DeepCollectionEquality().equals(other.roles, roles)&&(identical(other.vendedorId, vendedorId) || other.vendedorId == vendedorId)&&(identical(other.supervisorId, supervisorId) || other.supervisorId == supervisorId)&&(identical(other.esAdministrador, esAdministrador) || other.esAdministrador == esAdministrador)&&(identical(other.esSupervisor, esSupervisor) || other.esSupervisor == esSupervisor)&&(identical(other.esVendedor, esVendedor) || other.esVendedor == esVendedor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usrId,usrNombreCompleto,usrCorreo,usrTelefono,usrNitEmpleado,usrCarnetIdentidad,usrUsuarioLog,usrContrasenaLog,const DeepCollectionEquality().hash(token),usrEstadoDel,const DeepCollectionEquality().hash(roles),vendedorId,supervisorId,esAdministrador,esSupervisor,esVendedor);

@override
String toString() {
  return 'Usuario(usrId: $usrId, usrNombreCompleto: $usrNombreCompleto, usrCorreo: $usrCorreo, usrTelefono: $usrTelefono, usrNitEmpleado: $usrNitEmpleado, usrCarnetIdentidad: $usrCarnetIdentidad, usrUsuarioLog: $usrUsuarioLog, usrContrasenaLog: $usrContrasenaLog, token: $token, usrEstadoDel: $usrEstadoDel, roles: $roles, vendedorId: $vendedorId, supervisorId: $supervisorId, esAdministrador: $esAdministrador, esSupervisor: $esSupervisor, esVendedor: $esVendedor)';
}


}

/// @nodoc
abstract mixin class $UsuarioCopyWith<$Res>  {
  factory $UsuarioCopyWith(Usuario value, $Res Function(Usuario) _then) = _$UsuarioCopyWithImpl;
@useResult
$Res call({
 int usrId, String usrNombreCompleto, String? usrCorreo, String? usrTelefono, String? usrNitEmpleado, String? usrCarnetIdentidad, String? usrUsuarioLog, String? usrContrasenaLog, dynamic token, bool usrEstadoDel, List<Role> roles, int? vendedorId, int? supervisorId, bool esAdministrador, bool esSupervisor, bool esVendedor
});




}
/// @nodoc
class _$UsuarioCopyWithImpl<$Res>
    implements $UsuarioCopyWith<$Res> {
  _$UsuarioCopyWithImpl(this._self, this._then);

  final Usuario _self;
  final $Res Function(Usuario) _then;

/// Create a copy of Usuario
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? usrId = null,Object? usrNombreCompleto = null,Object? usrCorreo = freezed,Object? usrTelefono = freezed,Object? usrNitEmpleado = freezed,Object? usrCarnetIdentidad = freezed,Object? usrUsuarioLog = freezed,Object? usrContrasenaLog = freezed,Object? token = freezed,Object? usrEstadoDel = null,Object? roles = null,Object? vendedorId = freezed,Object? supervisorId = freezed,Object? esAdministrador = null,Object? esSupervisor = null,Object? esVendedor = null,}) {
  return _then(_self.copyWith(
usrId: null == usrId ? _self.usrId : usrId // ignore: cast_nullable_to_non_nullable
as int,usrNombreCompleto: null == usrNombreCompleto ? _self.usrNombreCompleto : usrNombreCompleto // ignore: cast_nullable_to_non_nullable
as String,usrCorreo: freezed == usrCorreo ? _self.usrCorreo : usrCorreo // ignore: cast_nullable_to_non_nullable
as String?,usrTelefono: freezed == usrTelefono ? _self.usrTelefono : usrTelefono // ignore: cast_nullable_to_non_nullable
as String?,usrNitEmpleado: freezed == usrNitEmpleado ? _self.usrNitEmpleado : usrNitEmpleado // ignore: cast_nullable_to_non_nullable
as String?,usrCarnetIdentidad: freezed == usrCarnetIdentidad ? _self.usrCarnetIdentidad : usrCarnetIdentidad // ignore: cast_nullable_to_non_nullable
as String?,usrUsuarioLog: freezed == usrUsuarioLog ? _self.usrUsuarioLog : usrUsuarioLog // ignore: cast_nullable_to_non_nullable
as String?,usrContrasenaLog: freezed == usrContrasenaLog ? _self.usrContrasenaLog : usrContrasenaLog // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as dynamic,usrEstadoDel: null == usrEstadoDel ? _self.usrEstadoDel : usrEstadoDel // ignore: cast_nullable_to_non_nullable
as bool,roles: null == roles ? _self.roles : roles // ignore: cast_nullable_to_non_nullable
as List<Role>,vendedorId: freezed == vendedorId ? _self.vendedorId : vendedorId // ignore: cast_nullable_to_non_nullable
as int?,supervisorId: freezed == supervisorId ? _self.supervisorId : supervisorId // ignore: cast_nullable_to_non_nullable
as int?,esAdministrador: null == esAdministrador ? _self.esAdministrador : esAdministrador // ignore: cast_nullable_to_non_nullable
as bool,esSupervisor: null == esSupervisor ? _self.esSupervisor : esSupervisor // ignore: cast_nullable_to_non_nullable
as bool,esVendedor: null == esVendedor ? _self.esVendedor : esVendedor // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Usuario].
extension UsuarioPatterns on Usuario {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Usuario value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Usuario() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Usuario value)  $default,){
final _that = this;
switch (_that) {
case _Usuario():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Usuario value)?  $default,){
final _that = this;
switch (_that) {
case _Usuario() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int usrId,  String usrNombreCompleto,  String? usrCorreo,  String? usrTelefono,  String? usrNitEmpleado,  String? usrCarnetIdentidad,  String? usrUsuarioLog,  String? usrContrasenaLog,  dynamic token,  bool usrEstadoDel,  List<Role> roles,  int? vendedorId,  int? supervisorId,  bool esAdministrador,  bool esSupervisor,  bool esVendedor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Usuario() when $default != null:
return $default(_that.usrId,_that.usrNombreCompleto,_that.usrCorreo,_that.usrTelefono,_that.usrNitEmpleado,_that.usrCarnetIdentidad,_that.usrUsuarioLog,_that.usrContrasenaLog,_that.token,_that.usrEstadoDel,_that.roles,_that.vendedorId,_that.supervisorId,_that.esAdministrador,_that.esSupervisor,_that.esVendedor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int usrId,  String usrNombreCompleto,  String? usrCorreo,  String? usrTelefono,  String? usrNitEmpleado,  String? usrCarnetIdentidad,  String? usrUsuarioLog,  String? usrContrasenaLog,  dynamic token,  bool usrEstadoDel,  List<Role> roles,  int? vendedorId,  int? supervisorId,  bool esAdministrador,  bool esSupervisor,  bool esVendedor)  $default,) {final _that = this;
switch (_that) {
case _Usuario():
return $default(_that.usrId,_that.usrNombreCompleto,_that.usrCorreo,_that.usrTelefono,_that.usrNitEmpleado,_that.usrCarnetIdentidad,_that.usrUsuarioLog,_that.usrContrasenaLog,_that.token,_that.usrEstadoDel,_that.roles,_that.vendedorId,_that.supervisorId,_that.esAdministrador,_that.esSupervisor,_that.esVendedor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int usrId,  String usrNombreCompleto,  String? usrCorreo,  String? usrTelefono,  String? usrNitEmpleado,  String? usrCarnetIdentidad,  String? usrUsuarioLog,  String? usrContrasenaLog,  dynamic token,  bool usrEstadoDel,  List<Role> roles,  int? vendedorId,  int? supervisorId,  bool esAdministrador,  bool esSupervisor,  bool esVendedor)?  $default,) {final _that = this;
switch (_that) {
case _Usuario() when $default != null:
return $default(_that.usrId,_that.usrNombreCompleto,_that.usrCorreo,_that.usrTelefono,_that.usrNitEmpleado,_that.usrCarnetIdentidad,_that.usrUsuarioLog,_that.usrContrasenaLog,_that.token,_that.usrEstadoDel,_that.roles,_that.vendedorId,_that.supervisorId,_that.esAdministrador,_that.esSupervisor,_that.esVendedor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Usuario extends Usuario {
  const _Usuario({required this.usrId, required this.usrNombreCompleto, required this.usrCorreo, required this.usrTelefono, required this.usrNitEmpleado, required this.usrCarnetIdentidad, required this.usrUsuarioLog, required this.usrContrasenaLog, this.token = "", this.usrEstadoDel = true, final  List<Role> roles = const [], this.vendedorId = null, this.supervisorId = null, this.esAdministrador = false, this.esSupervisor = false, this.esVendedor = false}): _roles = roles,super._();
  factory _Usuario.fromJson(Map<String, dynamic> json) => _$UsuarioFromJson(json);

@override final  int usrId;
@override final  String usrNombreCompleto;
@override final  String? usrCorreo;
@override final  String? usrTelefono;
@override final  String? usrNitEmpleado;
@override final  String? usrCarnetIdentidad;
@override final  String? usrUsuarioLog;
@override final  String? usrContrasenaLog;
@override@JsonKey() final  dynamic token;
@override@JsonKey() final  bool usrEstadoDel;
 final  List<Role> _roles;
@override@JsonKey() List<Role> get roles {
  if (_roles is EqualUnmodifiableListView) return _roles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roles);
}

@override@JsonKey() final  int? vendedorId;
@override@JsonKey() final  int? supervisorId;
@override@JsonKey() final  bool esAdministrador;
@override@JsonKey() final  bool esSupervisor;
@override@JsonKey() final  bool esVendedor;

/// Create a copy of Usuario
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsuarioCopyWith<_Usuario> get copyWith => __$UsuarioCopyWithImpl<_Usuario>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsuarioToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Usuario&&(identical(other.usrId, usrId) || other.usrId == usrId)&&(identical(other.usrNombreCompleto, usrNombreCompleto) || other.usrNombreCompleto == usrNombreCompleto)&&(identical(other.usrCorreo, usrCorreo) || other.usrCorreo == usrCorreo)&&(identical(other.usrTelefono, usrTelefono) || other.usrTelefono == usrTelefono)&&(identical(other.usrNitEmpleado, usrNitEmpleado) || other.usrNitEmpleado == usrNitEmpleado)&&(identical(other.usrCarnetIdentidad, usrCarnetIdentidad) || other.usrCarnetIdentidad == usrCarnetIdentidad)&&(identical(other.usrUsuarioLog, usrUsuarioLog) || other.usrUsuarioLog == usrUsuarioLog)&&(identical(other.usrContrasenaLog, usrContrasenaLog) || other.usrContrasenaLog == usrContrasenaLog)&&const DeepCollectionEquality().equals(other.token, token)&&(identical(other.usrEstadoDel, usrEstadoDel) || other.usrEstadoDel == usrEstadoDel)&&const DeepCollectionEquality().equals(other._roles, _roles)&&(identical(other.vendedorId, vendedorId) || other.vendedorId == vendedorId)&&(identical(other.supervisorId, supervisorId) || other.supervisorId == supervisorId)&&(identical(other.esAdministrador, esAdministrador) || other.esAdministrador == esAdministrador)&&(identical(other.esSupervisor, esSupervisor) || other.esSupervisor == esSupervisor)&&(identical(other.esVendedor, esVendedor) || other.esVendedor == esVendedor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usrId,usrNombreCompleto,usrCorreo,usrTelefono,usrNitEmpleado,usrCarnetIdentidad,usrUsuarioLog,usrContrasenaLog,const DeepCollectionEquality().hash(token),usrEstadoDel,const DeepCollectionEquality().hash(_roles),vendedorId,supervisorId,esAdministrador,esSupervisor,esVendedor);

@override
String toString() {
  return 'Usuario(usrId: $usrId, usrNombreCompleto: $usrNombreCompleto, usrCorreo: $usrCorreo, usrTelefono: $usrTelefono, usrNitEmpleado: $usrNitEmpleado, usrCarnetIdentidad: $usrCarnetIdentidad, usrUsuarioLog: $usrUsuarioLog, usrContrasenaLog: $usrContrasenaLog, token: $token, usrEstadoDel: $usrEstadoDel, roles: $roles, vendedorId: $vendedorId, supervisorId: $supervisorId, esAdministrador: $esAdministrador, esSupervisor: $esSupervisor, esVendedor: $esVendedor)';
}


}

/// @nodoc
abstract mixin class _$UsuarioCopyWith<$Res> implements $UsuarioCopyWith<$Res> {
  factory _$UsuarioCopyWith(_Usuario value, $Res Function(_Usuario) _then) = __$UsuarioCopyWithImpl;
@override @useResult
$Res call({
 int usrId, String usrNombreCompleto, String? usrCorreo, String? usrTelefono, String? usrNitEmpleado, String? usrCarnetIdentidad, String? usrUsuarioLog, String? usrContrasenaLog, dynamic token, bool usrEstadoDel, List<Role> roles, int? vendedorId, int? supervisorId, bool esAdministrador, bool esSupervisor, bool esVendedor
});




}
/// @nodoc
class __$UsuarioCopyWithImpl<$Res>
    implements _$UsuarioCopyWith<$Res> {
  __$UsuarioCopyWithImpl(this._self, this._then);

  final _Usuario _self;
  final $Res Function(_Usuario) _then;

/// Create a copy of Usuario
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? usrId = null,Object? usrNombreCompleto = null,Object? usrCorreo = freezed,Object? usrTelefono = freezed,Object? usrNitEmpleado = freezed,Object? usrCarnetIdentidad = freezed,Object? usrUsuarioLog = freezed,Object? usrContrasenaLog = freezed,Object? token = freezed,Object? usrEstadoDel = null,Object? roles = null,Object? vendedorId = freezed,Object? supervisorId = freezed,Object? esAdministrador = null,Object? esSupervisor = null,Object? esVendedor = null,}) {
  return _then(_Usuario(
usrId: null == usrId ? _self.usrId : usrId // ignore: cast_nullable_to_non_nullable
as int,usrNombreCompleto: null == usrNombreCompleto ? _self.usrNombreCompleto : usrNombreCompleto // ignore: cast_nullable_to_non_nullable
as String,usrCorreo: freezed == usrCorreo ? _self.usrCorreo : usrCorreo // ignore: cast_nullable_to_non_nullable
as String?,usrTelefono: freezed == usrTelefono ? _self.usrTelefono : usrTelefono // ignore: cast_nullable_to_non_nullable
as String?,usrNitEmpleado: freezed == usrNitEmpleado ? _self.usrNitEmpleado : usrNitEmpleado // ignore: cast_nullable_to_non_nullable
as String?,usrCarnetIdentidad: freezed == usrCarnetIdentidad ? _self.usrCarnetIdentidad : usrCarnetIdentidad // ignore: cast_nullable_to_non_nullable
as String?,usrUsuarioLog: freezed == usrUsuarioLog ? _self.usrUsuarioLog : usrUsuarioLog // ignore: cast_nullable_to_non_nullable
as String?,usrContrasenaLog: freezed == usrContrasenaLog ? _self.usrContrasenaLog : usrContrasenaLog // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as dynamic,usrEstadoDel: null == usrEstadoDel ? _self.usrEstadoDel : usrEstadoDel // ignore: cast_nullable_to_non_nullable
as bool,roles: null == roles ? _self._roles : roles // ignore: cast_nullable_to_non_nullable
as List<Role>,vendedorId: freezed == vendedorId ? _self.vendedorId : vendedorId // ignore: cast_nullable_to_non_nullable
as int?,supervisorId: freezed == supervisorId ? _self.supervisorId : supervisorId // ignore: cast_nullable_to_non_nullable
as int?,esAdministrador: null == esAdministrador ? _self.esAdministrador : esAdministrador // ignore: cast_nullable_to_non_nullable
as bool,esSupervisor: null == esSupervisor ? _self.esSupervisor : esSupervisor // ignore: cast_nullable_to_non_nullable
as bool,esVendedor: null == esVendedor ? _self.esVendedor : esVendedor // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
