// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visita_por_ruta_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VisitaPorRutaScreenState {

 bool get isCargando; List<Visita> get visitas; MensajeUI? get mensajeUi;
/// Create a copy of VisitaPorRutaScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisitaPorRutaScreenStateCopyWith<VisitaPorRutaScreenState> get copyWith => _$VisitaPorRutaScreenStateCopyWithImpl<VisitaPorRutaScreenState>(this as VisitaPorRutaScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisitaPorRutaScreenState&&(identical(other.isCargando, isCargando) || other.isCargando == isCargando)&&const DeepCollectionEquality().equals(other.visitas, visitas)&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi));
}


@override
int get hashCode => Object.hash(runtimeType,isCargando,const DeepCollectionEquality().hash(visitas),mensajeUi);

@override
String toString() {
  return 'VisitaPorRutaScreenState(isCargando: $isCargando, visitas: $visitas, mensajeUi: $mensajeUi)';
}


}

/// @nodoc
abstract mixin class $VisitaPorRutaScreenStateCopyWith<$Res>  {
  factory $VisitaPorRutaScreenStateCopyWith(VisitaPorRutaScreenState value, $Res Function(VisitaPorRutaScreenState) _then) = _$VisitaPorRutaScreenStateCopyWithImpl;
@useResult
$Res call({
 bool isCargando, List<Visita> visitas, MensajeUI? mensajeUi
});


$MensajeUICopyWith<$Res>? get mensajeUi;

}
/// @nodoc
class _$VisitaPorRutaScreenStateCopyWithImpl<$Res>
    implements $VisitaPorRutaScreenStateCopyWith<$Res> {
  _$VisitaPorRutaScreenStateCopyWithImpl(this._self, this._then);

  final VisitaPorRutaScreenState _self;
  final $Res Function(VisitaPorRutaScreenState) _then;

/// Create a copy of VisitaPorRutaScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isCargando = null,Object? visitas = null,Object? mensajeUi = freezed,}) {
  return _then(_self.copyWith(
isCargando: null == isCargando ? _self.isCargando : isCargando // ignore: cast_nullable_to_non_nullable
as bool,visitas: null == visitas ? _self.visitas : visitas // ignore: cast_nullable_to_non_nullable
as List<Visita>,mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,
  ));
}
/// Create a copy of VisitaPorRutaScreenState
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
}
}


/// Adds pattern-matching-related methods to [VisitaPorRutaScreenState].
extension VisitaPorRutaScreenStatePatterns on VisitaPorRutaScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisitaPorRutaScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisitaPorRutaScreenState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisitaPorRutaScreenState value)  $default,){
final _that = this;
switch (_that) {
case _VisitaPorRutaScreenState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisitaPorRutaScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _VisitaPorRutaScreenState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isCargando,  List<Visita> visitas,  MensajeUI? mensajeUi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VisitaPorRutaScreenState() when $default != null:
return $default(_that.isCargando,_that.visitas,_that.mensajeUi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isCargando,  List<Visita> visitas,  MensajeUI? mensajeUi)  $default,) {final _that = this;
switch (_that) {
case _VisitaPorRutaScreenState():
return $default(_that.isCargando,_that.visitas,_that.mensajeUi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isCargando,  List<Visita> visitas,  MensajeUI? mensajeUi)?  $default,) {final _that = this;
switch (_that) {
case _VisitaPorRutaScreenState() when $default != null:
return $default(_that.isCargando,_that.visitas,_that.mensajeUi);case _:
  return null;

}
}

}

/// @nodoc


class _VisitaPorRutaScreenState extends VisitaPorRutaScreenState {
  const _VisitaPorRutaScreenState({this.isCargando = true, final  List<Visita> visitas = const [], this.mensajeUi}): _visitas = visitas,super._();
  

@override@JsonKey() final  bool isCargando;
 final  List<Visita> _visitas;
@override@JsonKey() List<Visita> get visitas {
  if (_visitas is EqualUnmodifiableListView) return _visitas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_visitas);
}

@override final  MensajeUI? mensajeUi;

/// Create a copy of VisitaPorRutaScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisitaPorRutaScreenStateCopyWith<_VisitaPorRutaScreenState> get copyWith => __$VisitaPorRutaScreenStateCopyWithImpl<_VisitaPorRutaScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VisitaPorRutaScreenState&&(identical(other.isCargando, isCargando) || other.isCargando == isCargando)&&const DeepCollectionEquality().equals(other._visitas, _visitas)&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi));
}


@override
int get hashCode => Object.hash(runtimeType,isCargando,const DeepCollectionEquality().hash(_visitas),mensajeUi);

@override
String toString() {
  return 'VisitaPorRutaScreenState(isCargando: $isCargando, visitas: $visitas, mensajeUi: $mensajeUi)';
}


}

/// @nodoc
abstract mixin class _$VisitaPorRutaScreenStateCopyWith<$Res> implements $VisitaPorRutaScreenStateCopyWith<$Res> {
  factory _$VisitaPorRutaScreenStateCopyWith(_VisitaPorRutaScreenState value, $Res Function(_VisitaPorRutaScreenState) _then) = __$VisitaPorRutaScreenStateCopyWithImpl;
@override @useResult
$Res call({
 bool isCargando, List<Visita> visitas, MensajeUI? mensajeUi
});


@override $MensajeUICopyWith<$Res>? get mensajeUi;

}
/// @nodoc
class __$VisitaPorRutaScreenStateCopyWithImpl<$Res>
    implements _$VisitaPorRutaScreenStateCopyWith<$Res> {
  __$VisitaPorRutaScreenStateCopyWithImpl(this._self, this._then);

  final _VisitaPorRutaScreenState _self;
  final $Res Function(_VisitaPorRutaScreenState) _then;

/// Create a copy of VisitaPorRutaScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isCargando = null,Object? visitas = null,Object? mensajeUi = freezed,}) {
  return _then(_VisitaPorRutaScreenState(
isCargando: null == isCargando ? _self.isCargando : isCargando // ignore: cast_nullable_to_non_nullable
as bool,visitas: null == visitas ? _self._visitas : visitas // ignore: cast_nullable_to_non_nullable
as List<Visita>,mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,
  ));
}

/// Create a copy of VisitaPorRutaScreenState
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
}
}

// dart format on
