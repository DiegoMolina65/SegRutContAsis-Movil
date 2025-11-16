// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resultado.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Resultado<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Resultado<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Resultado<$T>()';
}


}

/// @nodoc
class $ResultadoCopyWith<T,$Res>  {
$ResultadoCopyWith(Resultado<T> _, $Res Function(Resultado<T>) __);
}


/// Adds pattern-matching-related methods to [Resultado].
extension ResultadoPatterns<T> on Resultado<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OkResultado<T> value)?  ok,TResult Function( ErrorResultado<T> value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OkResultado() when ok != null:
return ok(_that);case ErrorResultado() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OkResultado<T> value)  ok,required TResult Function( ErrorResultado<T> value)  error,}){
final _that = this;
switch (_that) {
case OkResultado():
return ok(_that);case ErrorResultado():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OkResultado<T> value)?  ok,TResult? Function( ErrorResultado<T> value)?  error,}){
final _that = this;
switch (_that) {
case OkResultado() when ok != null:
return ok(_that);case ErrorResultado() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T valor)?  ok,TResult Function( String mensaje)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OkResultado() when ok != null:
return ok(_that.valor);case ErrorResultado() when error != null:
return error(_that.mensaje);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T valor)  ok,required TResult Function( String mensaje)  error,}) {final _that = this;
switch (_that) {
case OkResultado():
return ok(_that.valor);case ErrorResultado():
return error(_that.mensaje);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T valor)?  ok,TResult? Function( String mensaje)?  error,}) {final _that = this;
switch (_that) {
case OkResultado() when ok != null:
return ok(_that.valor);case ErrorResultado() when error != null:
return error(_that.mensaje);case _:
  return null;

}
}

}

/// @nodoc


class OkResultado<T> extends Resultado<T> {
  const OkResultado(this.valor): super._();
  

 final  T valor;

/// Create a copy of Resultado
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OkResultadoCopyWith<T, OkResultado<T>> get copyWith => _$OkResultadoCopyWithImpl<T, OkResultado<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OkResultado<T>&&const DeepCollectionEquality().equals(other.valor, valor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(valor));

@override
String toString() {
  return 'Resultado<$T>.ok(valor: $valor)';
}


}

/// @nodoc
abstract mixin class $OkResultadoCopyWith<T,$Res> implements $ResultadoCopyWith<T, $Res> {
  factory $OkResultadoCopyWith(OkResultado<T> value, $Res Function(OkResultado<T>) _then) = _$OkResultadoCopyWithImpl;
@useResult
$Res call({
 T valor
});




}
/// @nodoc
class _$OkResultadoCopyWithImpl<T,$Res>
    implements $OkResultadoCopyWith<T, $Res> {
  _$OkResultadoCopyWithImpl(this._self, this._then);

  final OkResultado<T> _self;
  final $Res Function(OkResultado<T>) _then;

/// Create a copy of Resultado
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? valor = freezed,}) {
  return _then(OkResultado<T>(
freezed == valor ? _self.valor : valor // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ErrorResultado<T> extends Resultado<T> {
  const ErrorResultado(this.mensaje): super._();
  

 final  String mensaje;

/// Create a copy of Resultado
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorResultadoCopyWith<T, ErrorResultado<T>> get copyWith => _$ErrorResultadoCopyWithImpl<T, ErrorResultado<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorResultado<T>&&(identical(other.mensaje, mensaje) || other.mensaje == mensaje));
}


@override
int get hashCode => Object.hash(runtimeType,mensaje);

@override
String toString() {
  return 'Resultado<$T>.error(mensaje: $mensaje)';
}


}

/// @nodoc
abstract mixin class $ErrorResultadoCopyWith<T,$Res> implements $ResultadoCopyWith<T, $Res> {
  factory $ErrorResultadoCopyWith(ErrorResultado<T> value, $Res Function(ErrorResultado<T>) _then) = _$ErrorResultadoCopyWithImpl;
@useResult
$Res call({
 String mensaje
});




}
/// @nodoc
class _$ErrorResultadoCopyWithImpl<T,$Res>
    implements $ErrorResultadoCopyWith<T, $Res> {
  _$ErrorResultadoCopyWithImpl(this._self, this._then);

  final ErrorResultado<T> _self;
  final $Res Function(ErrorResultado<T>) _then;

/// Create a copy of Resultado
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mensaje = null,}) {
  return _then(ErrorResultado<T>(
null == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
