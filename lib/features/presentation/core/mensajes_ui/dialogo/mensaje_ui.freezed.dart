// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mensaje_ui.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MensajeUI {

 String get mensaje; String? get titulo;
/// Create a copy of MensajeUI
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MensajeUICopyWith<MensajeUI> get copyWith => _$MensajeUICopyWithImpl<MensajeUI>(this as MensajeUI, _$identity);





@override
String toString() {
  return 'MensajeUI(mensaje: $mensaje, titulo: $titulo)';
}


}

/// @nodoc
abstract mixin class $MensajeUICopyWith<$Res>  {
  factory $MensajeUICopyWith(MensajeUI value, $Res Function(MensajeUI) _then) = _$MensajeUICopyWithImpl;
@useResult
$Res call({
 String mensaje, String? titulo
});




}
/// @nodoc
class _$MensajeUICopyWithImpl<$Res>
    implements $MensajeUICopyWith<$Res> {
  _$MensajeUICopyWithImpl(this._self, this._then);

  final MensajeUI _self;
  final $Res Function(MensajeUI) _then;

/// Create a copy of MensajeUI
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mensaje = null,Object? titulo = freezed,}) {
  return _then(_self.copyWith(
mensaje: null == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String,titulo: freezed == titulo ? _self.titulo : titulo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MensajeUI].
extension MensajeUIPatterns on MensajeUI {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ErrorMensajeUI value)?  errorMensaje,TResult Function( AlertaMensajeUI value)?  alertaMensaje,TResult Function( OkMensajeUI value)?  okMensaje,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ErrorMensajeUI() when errorMensaje != null:
return errorMensaje(_that);case AlertaMensajeUI() when alertaMensaje != null:
return alertaMensaje(_that);case OkMensajeUI() when okMensaje != null:
return okMensaje(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ErrorMensajeUI value)  errorMensaje,required TResult Function( AlertaMensajeUI value)  alertaMensaje,required TResult Function( OkMensajeUI value)  okMensaje,}){
final _that = this;
switch (_that) {
case ErrorMensajeUI():
return errorMensaje(_that);case AlertaMensajeUI():
return alertaMensaje(_that);case OkMensajeUI():
return okMensaje(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ErrorMensajeUI value)?  errorMensaje,TResult? Function( AlertaMensajeUI value)?  alertaMensaje,TResult? Function( OkMensajeUI value)?  okMensaje,}){
final _that = this;
switch (_that) {
case ErrorMensajeUI() when errorMensaje != null:
return errorMensaje(_that);case AlertaMensajeUI() when alertaMensaje != null:
return alertaMensaje(_that);case OkMensajeUI() when okMensaje != null:
return okMensaje(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String mensaje,  String? titulo,  StackTrace? stackTrace)?  errorMensaje,TResult Function( String mensaje,  String? titulo)?  alertaMensaje,TResult Function( String mensaje,  String? titulo)?  okMensaje,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ErrorMensajeUI() when errorMensaje != null:
return errorMensaje(_that.mensaje,_that.titulo,_that.stackTrace);case AlertaMensajeUI() when alertaMensaje != null:
return alertaMensaje(_that.mensaje,_that.titulo);case OkMensajeUI() when okMensaje != null:
return okMensaje(_that.mensaje,_that.titulo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String mensaje,  String? titulo,  StackTrace? stackTrace)  errorMensaje,required TResult Function( String mensaje,  String? titulo)  alertaMensaje,required TResult Function( String mensaje,  String? titulo)  okMensaje,}) {final _that = this;
switch (_that) {
case ErrorMensajeUI():
return errorMensaje(_that.mensaje,_that.titulo,_that.stackTrace);case AlertaMensajeUI():
return alertaMensaje(_that.mensaje,_that.titulo);case OkMensajeUI():
return okMensaje(_that.mensaje,_that.titulo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String mensaje,  String? titulo,  StackTrace? stackTrace)?  errorMensaje,TResult? Function( String mensaje,  String? titulo)?  alertaMensaje,TResult? Function( String mensaje,  String? titulo)?  okMensaje,}) {final _that = this;
switch (_that) {
case ErrorMensajeUI() when errorMensaje != null:
return errorMensaje(_that.mensaje,_that.titulo,_that.stackTrace);case AlertaMensajeUI() when alertaMensaje != null:
return alertaMensaje(_that.mensaje,_that.titulo);case OkMensajeUI() when okMensaje != null:
return okMensaje(_that.mensaje,_that.titulo);case _:
  return null;

}
}

}

/// @nodoc


class ErrorMensajeUI extends MensajeUI {
   ErrorMensajeUI(this.mensaje, {this.titulo, this.stackTrace}): super._();
  

@override final  String mensaje;
@override final  String? titulo;
 final  StackTrace? stackTrace;

/// Create a copy of MensajeUI
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorMensajeUICopyWith<ErrorMensajeUI> get copyWith => _$ErrorMensajeUICopyWithImpl<ErrorMensajeUI>(this, _$identity);





@override
String toString() {
  return 'MensajeUI.errorMensaje(mensaje: $mensaje, titulo: $titulo, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $ErrorMensajeUICopyWith<$Res> implements $MensajeUICopyWith<$Res> {
  factory $ErrorMensajeUICopyWith(ErrorMensajeUI value, $Res Function(ErrorMensajeUI) _then) = _$ErrorMensajeUICopyWithImpl;
@override @useResult
$Res call({
 String mensaje, String? titulo, StackTrace? stackTrace
});




}
/// @nodoc
class _$ErrorMensajeUICopyWithImpl<$Res>
    implements $ErrorMensajeUICopyWith<$Res> {
  _$ErrorMensajeUICopyWithImpl(this._self, this._then);

  final ErrorMensajeUI _self;
  final $Res Function(ErrorMensajeUI) _then;

/// Create a copy of MensajeUI
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mensaje = null,Object? titulo = freezed,Object? stackTrace = freezed,}) {
  return _then(ErrorMensajeUI(
null == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String,titulo: freezed == titulo ? _self.titulo : titulo // ignore: cast_nullable_to_non_nullable
as String?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class AlertaMensajeUI extends MensajeUI {
   AlertaMensajeUI(this.mensaje, {this.titulo}): super._();
  

@override final  String mensaje;
@override final  String? titulo;

/// Create a copy of MensajeUI
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlertaMensajeUICopyWith<AlertaMensajeUI> get copyWith => _$AlertaMensajeUICopyWithImpl<AlertaMensajeUI>(this, _$identity);





@override
String toString() {
  return 'MensajeUI.alertaMensaje(mensaje: $mensaje, titulo: $titulo)';
}


}

/// @nodoc
abstract mixin class $AlertaMensajeUICopyWith<$Res> implements $MensajeUICopyWith<$Res> {
  factory $AlertaMensajeUICopyWith(AlertaMensajeUI value, $Res Function(AlertaMensajeUI) _then) = _$AlertaMensajeUICopyWithImpl;
@override @useResult
$Res call({
 String mensaje, String? titulo
});




}
/// @nodoc
class _$AlertaMensajeUICopyWithImpl<$Res>
    implements $AlertaMensajeUICopyWith<$Res> {
  _$AlertaMensajeUICopyWithImpl(this._self, this._then);

  final AlertaMensajeUI _self;
  final $Res Function(AlertaMensajeUI) _then;

/// Create a copy of MensajeUI
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mensaje = null,Object? titulo = freezed,}) {
  return _then(AlertaMensajeUI(
null == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String,titulo: freezed == titulo ? _self.titulo : titulo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class OkMensajeUI extends MensajeUI {
   OkMensajeUI(this.mensaje, {this.titulo}): super._();
  

@override final  String mensaje;
@override final  String? titulo;

/// Create a copy of MensajeUI
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OkMensajeUICopyWith<OkMensajeUI> get copyWith => _$OkMensajeUICopyWithImpl<OkMensajeUI>(this, _$identity);





@override
String toString() {
  return 'MensajeUI.okMensaje(mensaje: $mensaje, titulo: $titulo)';
}


}

/// @nodoc
abstract mixin class $OkMensajeUICopyWith<$Res> implements $MensajeUICopyWith<$Res> {
  factory $OkMensajeUICopyWith(OkMensajeUI value, $Res Function(OkMensajeUI) _then) = _$OkMensajeUICopyWithImpl;
@override @useResult
$Res call({
 String mensaje, String? titulo
});




}
/// @nodoc
class _$OkMensajeUICopyWithImpl<$Res>
    implements $OkMensajeUICopyWith<$Res> {
  _$OkMensajeUICopyWithImpl(this._self, this._then);

  final OkMensajeUI _self;
  final $Res Function(OkMensajeUI) _then;

/// Create a copy of MensajeUI
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mensaje = null,Object? titulo = freezed,}) {
  return _then(OkMensajeUI(
null == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String,titulo: freezed == titulo ? _self.titulo : titulo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
