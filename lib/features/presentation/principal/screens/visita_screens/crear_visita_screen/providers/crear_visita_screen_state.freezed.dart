// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crear_visita_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CrearVisitaScreenState {

 MensajeUI? get mensajeUi; MensajeUI? get eventoUI;/// Campo para Edición (si > 0, estamos en modo edición)
 int get visId;/// Campos del formulario
 int get rutId; int get dirClId; String get visComentario; bool get isCargando;
/// Create a copy of CrearVisitaScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CrearVisitaScreenStateCopyWith<CrearVisitaScreenState> get copyWith => _$CrearVisitaScreenStateCopyWithImpl<CrearVisitaScreenState>(this as CrearVisitaScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CrearVisitaScreenState&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI)&&(identical(other.visId, visId) || other.visId == visId)&&(identical(other.rutId, rutId) || other.rutId == rutId)&&(identical(other.dirClId, dirClId) || other.dirClId == dirClId)&&(identical(other.visComentario, visComentario) || other.visComentario == visComentario)&&(identical(other.isCargando, isCargando) || other.isCargando == isCargando));
}


@override
int get hashCode => Object.hash(runtimeType,mensajeUi,eventoUI,visId,rutId,dirClId,visComentario,isCargando);

@override
String toString() {
  return 'CrearVisitaScreenState(mensajeUi: $mensajeUi, eventoUI: $eventoUI, visId: $visId, rutId: $rutId, dirClId: $dirClId, visComentario: $visComentario, isCargando: $isCargando)';
}


}

/// @nodoc
abstract mixin class $CrearVisitaScreenStateCopyWith<$Res>  {
  factory $CrearVisitaScreenStateCopyWith(CrearVisitaScreenState value, $Res Function(CrearVisitaScreenState) _then) = _$CrearVisitaScreenStateCopyWithImpl;
@useResult
$Res call({
 MensajeUI? mensajeUi, MensajeUI? eventoUI, int visId, int rutId, int dirClId, String visComentario, bool isCargando
});


$MensajeUICopyWith<$Res>? get mensajeUi;$MensajeUICopyWith<$Res>? get eventoUI;

}
/// @nodoc
class _$CrearVisitaScreenStateCopyWithImpl<$Res>
    implements $CrearVisitaScreenStateCopyWith<$Res> {
  _$CrearVisitaScreenStateCopyWithImpl(this._self, this._then);

  final CrearVisitaScreenState _self;
  final $Res Function(CrearVisitaScreenState) _then;

/// Create a copy of CrearVisitaScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mensajeUi = freezed,Object? eventoUI = freezed,Object? visId = null,Object? rutId = null,Object? dirClId = null,Object? visComentario = null,Object? isCargando = null,}) {
  return _then(_self.copyWith(
mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as MensajeUI?,visId: null == visId ? _self.visId : visId // ignore: cast_nullable_to_non_nullable
as int,rutId: null == rutId ? _self.rutId : rutId // ignore: cast_nullable_to_non_nullable
as int,dirClId: null == dirClId ? _self.dirClId : dirClId // ignore: cast_nullable_to_non_nullable
as int,visComentario: null == visComentario ? _self.visComentario : visComentario // ignore: cast_nullable_to_non_nullable
as String,isCargando: null == isCargando ? _self.isCargando : isCargando // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of CrearVisitaScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MensajeUICopyWith<$Res>? get mensajeUi {
    if (_self.mensajeUi == null) {
    return null;
  }

  return $MensajeUICopyWith<$Res>(_self.mensajeUi!, (value) {
    return _then(_self.copyWith(mensajeUi: value));
  });
}/// Create a copy of CrearVisitaScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MensajeUICopyWith<$Res>? get eventoUI {
    if (_self.eventoUI == null) {
    return null;
  }

  return $MensajeUICopyWith<$Res>(_self.eventoUI!, (value) {
    return _then(_self.copyWith(eventoUI: value));
  });
}
}


/// Adds pattern-matching-related methods to [CrearVisitaScreenState].
extension CrearVisitaScreenStatePatterns on CrearVisitaScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CrearVisitaScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CrearVisitaScreenState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CrearVisitaScreenState value)  $default,){
final _that = this;
switch (_that) {
case _CrearVisitaScreenState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CrearVisitaScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _CrearVisitaScreenState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MensajeUI? mensajeUi,  MensajeUI? eventoUI,  int visId,  int rutId,  int dirClId,  String visComentario,  bool isCargando)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CrearVisitaScreenState() when $default != null:
return $default(_that.mensajeUi,_that.eventoUI,_that.visId,_that.rutId,_that.dirClId,_that.visComentario,_that.isCargando);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MensajeUI? mensajeUi,  MensajeUI? eventoUI,  int visId,  int rutId,  int dirClId,  String visComentario,  bool isCargando)  $default,) {final _that = this;
switch (_that) {
case _CrearVisitaScreenState():
return $default(_that.mensajeUi,_that.eventoUI,_that.visId,_that.rutId,_that.dirClId,_that.visComentario,_that.isCargando);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MensajeUI? mensajeUi,  MensajeUI? eventoUI,  int visId,  int rutId,  int dirClId,  String visComentario,  bool isCargando)?  $default,) {final _that = this;
switch (_that) {
case _CrearVisitaScreenState() when $default != null:
return $default(_that.mensajeUi,_that.eventoUI,_that.visId,_that.rutId,_that.dirClId,_that.visComentario,_that.isCargando);case _:
  return null;

}
}

}

/// @nodoc


class _CrearVisitaScreenState extends CrearVisitaScreenState {
  const _CrearVisitaScreenState({this.mensajeUi, this.eventoUI, this.visId = 0, this.rutId = 0, this.dirClId = 0, this.visComentario = "", this.isCargando = false}): super._();
  

@override final  MensajeUI? mensajeUi;
@override final  MensajeUI? eventoUI;
/// Campo para Edición (si > 0, estamos en modo edición)
@override@JsonKey() final  int visId;
/// Campos del formulario
@override@JsonKey() final  int rutId;
@override@JsonKey() final  int dirClId;
@override@JsonKey() final  String visComentario;
@override@JsonKey() final  bool isCargando;

/// Create a copy of CrearVisitaScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CrearVisitaScreenStateCopyWith<_CrearVisitaScreenState> get copyWith => __$CrearVisitaScreenStateCopyWithImpl<_CrearVisitaScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CrearVisitaScreenState&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI)&&(identical(other.visId, visId) || other.visId == visId)&&(identical(other.rutId, rutId) || other.rutId == rutId)&&(identical(other.dirClId, dirClId) || other.dirClId == dirClId)&&(identical(other.visComentario, visComentario) || other.visComentario == visComentario)&&(identical(other.isCargando, isCargando) || other.isCargando == isCargando));
}


@override
int get hashCode => Object.hash(runtimeType,mensajeUi,eventoUI,visId,rutId,dirClId,visComentario,isCargando);

@override
String toString() {
  return 'CrearVisitaScreenState(mensajeUi: $mensajeUi, eventoUI: $eventoUI, visId: $visId, rutId: $rutId, dirClId: $dirClId, visComentario: $visComentario, isCargando: $isCargando)';
}


}

/// @nodoc
abstract mixin class _$CrearVisitaScreenStateCopyWith<$Res> implements $CrearVisitaScreenStateCopyWith<$Res> {
  factory _$CrearVisitaScreenStateCopyWith(_CrearVisitaScreenState value, $Res Function(_CrearVisitaScreenState) _then) = __$CrearVisitaScreenStateCopyWithImpl;
@override @useResult
$Res call({
 MensajeUI? mensajeUi, MensajeUI? eventoUI, int visId, int rutId, int dirClId, String visComentario, bool isCargando
});


@override $MensajeUICopyWith<$Res>? get mensajeUi;@override $MensajeUICopyWith<$Res>? get eventoUI;

}
/// @nodoc
class __$CrearVisitaScreenStateCopyWithImpl<$Res>
    implements _$CrearVisitaScreenStateCopyWith<$Res> {
  __$CrearVisitaScreenStateCopyWithImpl(this._self, this._then);

  final _CrearVisitaScreenState _self;
  final $Res Function(_CrearVisitaScreenState) _then;

/// Create a copy of CrearVisitaScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mensajeUi = freezed,Object? eventoUI = freezed,Object? visId = null,Object? rutId = null,Object? dirClId = null,Object? visComentario = null,Object? isCargando = null,}) {
  return _then(_CrearVisitaScreenState(
mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as MensajeUI?,visId: null == visId ? _self.visId : visId // ignore: cast_nullable_to_non_nullable
as int,rutId: null == rutId ? _self.rutId : rutId // ignore: cast_nullable_to_non_nullable
as int,dirClId: null == dirClId ? _self.dirClId : dirClId // ignore: cast_nullable_to_non_nullable
as int,visComentario: null == visComentario ? _self.visComentario : visComentario // ignore: cast_nullable_to_non_nullable
as String,isCargando: null == isCargando ? _self.isCargando : isCargando // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of CrearVisitaScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MensajeUICopyWith<$Res>? get mensajeUi {
    if (_self.mensajeUi == null) {
    return null;
  }

  return $MensajeUICopyWith<$Res>(_self.mensajeUi!, (value) {
    return _then(_self.copyWith(mensajeUi: value));
  });
}/// Create a copy of CrearVisitaScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MensajeUICopyWith<$Res>? get eventoUI {
    if (_self.eventoUI == null) {
    return null;
  }

  return $MensajeUICopyWith<$Res>(_self.eventoUI!, (value) {
    return _then(_self.copyWith(eventoUI: value));
  });
}
}

// dart format on
