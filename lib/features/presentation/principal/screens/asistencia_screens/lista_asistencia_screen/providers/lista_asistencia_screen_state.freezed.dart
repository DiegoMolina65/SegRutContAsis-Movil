// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lista_asistencia_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListaAsistenciaScreenState {

 bool get isCargando; List<Asistencia> get asistencia; MensajeUI? get mensajeUi; MensajeUI? get eventoUI;
/// Create a copy of ListaAsistenciaScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListaAsistenciaScreenStateCopyWith<ListaAsistenciaScreenState> get copyWith => _$ListaAsistenciaScreenStateCopyWithImpl<ListaAsistenciaScreenState>(this as ListaAsistenciaScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListaAsistenciaScreenState&&(identical(other.isCargando, isCargando) || other.isCargando == isCargando)&&const DeepCollectionEquality().equals(other.asistencia, asistencia)&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI));
}


@override
int get hashCode => Object.hash(runtimeType,isCargando,const DeepCollectionEquality().hash(asistencia),mensajeUi,eventoUI);

@override
String toString() {
  return 'ListaAsistenciaScreenState(isCargando: $isCargando, asistencia: $asistencia, mensajeUi: $mensajeUi, eventoUI: $eventoUI)';
}


}

/// @nodoc
abstract mixin class $ListaAsistenciaScreenStateCopyWith<$Res>  {
  factory $ListaAsistenciaScreenStateCopyWith(ListaAsistenciaScreenState value, $Res Function(ListaAsistenciaScreenState) _then) = _$ListaAsistenciaScreenStateCopyWithImpl;
@useResult
$Res call({
 bool isCargando, List<Asistencia> asistencia, MensajeUI? mensajeUi, MensajeUI? eventoUI
});


$MensajeUICopyWith<$Res>? get mensajeUi;$MensajeUICopyWith<$Res>? get eventoUI;

}
/// @nodoc
class _$ListaAsistenciaScreenStateCopyWithImpl<$Res>
    implements $ListaAsistenciaScreenStateCopyWith<$Res> {
  _$ListaAsistenciaScreenStateCopyWithImpl(this._self, this._then);

  final ListaAsistenciaScreenState _self;
  final $Res Function(ListaAsistenciaScreenState) _then;

/// Create a copy of ListaAsistenciaScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isCargando = null,Object? asistencia = null,Object? mensajeUi = freezed,Object? eventoUI = freezed,}) {
  return _then(_self.copyWith(
isCargando: null == isCargando ? _self.isCargando : isCargando // ignore: cast_nullable_to_non_nullable
as bool,asistencia: null == asistencia ? _self.asistencia : asistencia // ignore: cast_nullable_to_non_nullable
as List<Asistencia>,mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as MensajeUI?,
  ));
}
/// Create a copy of ListaAsistenciaScreenState
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
}/// Create a copy of ListaAsistenciaScreenState
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


/// Adds pattern-matching-related methods to [ListaAsistenciaScreenState].
extension ListaAsistenciaScreenStatePatterns on ListaAsistenciaScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListaAsistenciaScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListaAsistenciaScreenState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListaAsistenciaScreenState value)  $default,){
final _that = this;
switch (_that) {
case _ListaAsistenciaScreenState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListaAsistenciaScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _ListaAsistenciaScreenState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isCargando,  List<Asistencia> asistencia,  MensajeUI? mensajeUi,  MensajeUI? eventoUI)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListaAsistenciaScreenState() when $default != null:
return $default(_that.isCargando,_that.asistencia,_that.mensajeUi,_that.eventoUI);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isCargando,  List<Asistencia> asistencia,  MensajeUI? mensajeUi,  MensajeUI? eventoUI)  $default,) {final _that = this;
switch (_that) {
case _ListaAsistenciaScreenState():
return $default(_that.isCargando,_that.asistencia,_that.mensajeUi,_that.eventoUI);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isCargando,  List<Asistencia> asistencia,  MensajeUI? mensajeUi,  MensajeUI? eventoUI)?  $default,) {final _that = this;
switch (_that) {
case _ListaAsistenciaScreenState() when $default != null:
return $default(_that.isCargando,_that.asistencia,_that.mensajeUi,_that.eventoUI);case _:
  return null;

}
}

}

/// @nodoc


class _ListaAsistenciaScreenState extends ListaAsistenciaScreenState {
  const _ListaAsistenciaScreenState({this.isCargando = true, final  List<Asistencia> asistencia = const [], this.mensajeUi, this.eventoUI}): _asistencia = asistencia,super._();
  

@override@JsonKey() final  bool isCargando;
 final  List<Asistencia> _asistencia;
@override@JsonKey() List<Asistencia> get asistencia {
  if (_asistencia is EqualUnmodifiableListView) return _asistencia;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_asistencia);
}

@override final  MensajeUI? mensajeUi;
@override final  MensajeUI? eventoUI;

/// Create a copy of ListaAsistenciaScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListaAsistenciaScreenStateCopyWith<_ListaAsistenciaScreenState> get copyWith => __$ListaAsistenciaScreenStateCopyWithImpl<_ListaAsistenciaScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListaAsistenciaScreenState&&(identical(other.isCargando, isCargando) || other.isCargando == isCargando)&&const DeepCollectionEquality().equals(other._asistencia, _asistencia)&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI));
}


@override
int get hashCode => Object.hash(runtimeType,isCargando,const DeepCollectionEquality().hash(_asistencia),mensajeUi,eventoUI);

@override
String toString() {
  return 'ListaAsistenciaScreenState(isCargando: $isCargando, asistencia: $asistencia, mensajeUi: $mensajeUi, eventoUI: $eventoUI)';
}


}

/// @nodoc
abstract mixin class _$ListaAsistenciaScreenStateCopyWith<$Res> implements $ListaAsistenciaScreenStateCopyWith<$Res> {
  factory _$ListaAsistenciaScreenStateCopyWith(_ListaAsistenciaScreenState value, $Res Function(_ListaAsistenciaScreenState) _then) = __$ListaAsistenciaScreenStateCopyWithImpl;
@override @useResult
$Res call({
 bool isCargando, List<Asistencia> asistencia, MensajeUI? mensajeUi, MensajeUI? eventoUI
});


@override $MensajeUICopyWith<$Res>? get mensajeUi;@override $MensajeUICopyWith<$Res>? get eventoUI;

}
/// @nodoc
class __$ListaAsistenciaScreenStateCopyWithImpl<$Res>
    implements _$ListaAsistenciaScreenStateCopyWith<$Res> {
  __$ListaAsistenciaScreenStateCopyWithImpl(this._self, this._then);

  final _ListaAsistenciaScreenState _self;
  final $Res Function(_ListaAsistenciaScreenState) _then;

/// Create a copy of ListaAsistenciaScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isCargando = null,Object? asistencia = null,Object? mensajeUi = freezed,Object? eventoUI = freezed,}) {
  return _then(_ListaAsistenciaScreenState(
isCargando: null == isCargando ? _self.isCargando : isCargando // ignore: cast_nullable_to_non_nullable
as bool,asistencia: null == asistencia ? _self._asistencia : asistencia // ignore: cast_nullable_to_non_nullable
as List<Asistencia>,mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as MensajeUI?,
  ));
}

/// Create a copy of ListaAsistenciaScreenState
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
}/// Create a copy of ListaAsistenciaScreenState
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
