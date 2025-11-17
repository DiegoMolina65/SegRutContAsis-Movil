// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lista_ruta_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListaRutaScreenState {

 bool get isCargando; List<Ruta> get rutas; MensajeUI? get mensajeUi; MensajeUI? get eventoUI;
/// Create a copy of ListaRutaScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListaRutaScreenStateCopyWith<ListaRutaScreenState> get copyWith => _$ListaRutaScreenStateCopyWithImpl<ListaRutaScreenState>(this as ListaRutaScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListaRutaScreenState&&(identical(other.isCargando, isCargando) || other.isCargando == isCargando)&&const DeepCollectionEquality().equals(other.rutas, rutas)&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI));
}


@override
int get hashCode => Object.hash(runtimeType,isCargando,const DeepCollectionEquality().hash(rutas),mensajeUi,eventoUI);

@override
String toString() {
  return 'ListaRutaScreenState(isCargando: $isCargando, rutas: $rutas, mensajeUi: $mensajeUi, eventoUI: $eventoUI)';
}


}

/// @nodoc
abstract mixin class $ListaRutaScreenStateCopyWith<$Res>  {
  factory $ListaRutaScreenStateCopyWith(ListaRutaScreenState value, $Res Function(ListaRutaScreenState) _then) = _$ListaRutaScreenStateCopyWithImpl;
@useResult
$Res call({
 bool isCargando, List<Ruta> rutas, MensajeUI? mensajeUi, MensajeUI? eventoUI
});


$MensajeUICopyWith<$Res>? get mensajeUi;$MensajeUICopyWith<$Res>? get eventoUI;

}
/// @nodoc
class _$ListaRutaScreenStateCopyWithImpl<$Res>
    implements $ListaRutaScreenStateCopyWith<$Res> {
  _$ListaRutaScreenStateCopyWithImpl(this._self, this._then);

  final ListaRutaScreenState _self;
  final $Res Function(ListaRutaScreenState) _then;

/// Create a copy of ListaRutaScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isCargando = null,Object? rutas = null,Object? mensajeUi = freezed,Object? eventoUI = freezed,}) {
  return _then(_self.copyWith(
isCargando: null == isCargando ? _self.isCargando : isCargando // ignore: cast_nullable_to_non_nullable
as bool,rutas: null == rutas ? _self.rutas : rutas // ignore: cast_nullable_to_non_nullable
as List<Ruta>,mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as MensajeUI?,
  ));
}
/// Create a copy of ListaRutaScreenState
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
}/// Create a copy of ListaRutaScreenState
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


/// Adds pattern-matching-related methods to [ListaRutaScreenState].
extension ListaRutaScreenStatePatterns on ListaRutaScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListaRutaScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListaRutaScreenState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListaRutaScreenState value)  $default,){
final _that = this;
switch (_that) {
case _ListaRutaScreenState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListaRutaScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _ListaRutaScreenState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isCargando,  List<Ruta> rutas,  MensajeUI? mensajeUi,  MensajeUI? eventoUI)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListaRutaScreenState() when $default != null:
return $default(_that.isCargando,_that.rutas,_that.mensajeUi,_that.eventoUI);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isCargando,  List<Ruta> rutas,  MensajeUI? mensajeUi,  MensajeUI? eventoUI)  $default,) {final _that = this;
switch (_that) {
case _ListaRutaScreenState():
return $default(_that.isCargando,_that.rutas,_that.mensajeUi,_that.eventoUI);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isCargando,  List<Ruta> rutas,  MensajeUI? mensajeUi,  MensajeUI? eventoUI)?  $default,) {final _that = this;
switch (_that) {
case _ListaRutaScreenState() when $default != null:
return $default(_that.isCargando,_that.rutas,_that.mensajeUi,_that.eventoUI);case _:
  return null;

}
}

}

/// @nodoc


class _ListaRutaScreenState extends ListaRutaScreenState {
  const _ListaRutaScreenState({this.isCargando = true, final  List<Ruta> rutas = const [], this.mensajeUi, this.eventoUI}): _rutas = rutas,super._();
  

@override@JsonKey() final  bool isCargando;
 final  List<Ruta> _rutas;
@override@JsonKey() List<Ruta> get rutas {
  if (_rutas is EqualUnmodifiableListView) return _rutas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rutas);
}

@override final  MensajeUI? mensajeUi;
@override final  MensajeUI? eventoUI;

/// Create a copy of ListaRutaScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListaRutaScreenStateCopyWith<_ListaRutaScreenState> get copyWith => __$ListaRutaScreenStateCopyWithImpl<_ListaRutaScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListaRutaScreenState&&(identical(other.isCargando, isCargando) || other.isCargando == isCargando)&&const DeepCollectionEquality().equals(other._rutas, _rutas)&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI));
}


@override
int get hashCode => Object.hash(runtimeType,isCargando,const DeepCollectionEquality().hash(_rutas),mensajeUi,eventoUI);

@override
String toString() {
  return 'ListaRutaScreenState(isCargando: $isCargando, rutas: $rutas, mensajeUi: $mensajeUi, eventoUI: $eventoUI)';
}


}

/// @nodoc
abstract mixin class _$ListaRutaScreenStateCopyWith<$Res> implements $ListaRutaScreenStateCopyWith<$Res> {
  factory _$ListaRutaScreenStateCopyWith(_ListaRutaScreenState value, $Res Function(_ListaRutaScreenState) _then) = __$ListaRutaScreenStateCopyWithImpl;
@override @useResult
$Res call({
 bool isCargando, List<Ruta> rutas, MensajeUI? mensajeUi, MensajeUI? eventoUI
});


@override $MensajeUICopyWith<$Res>? get mensajeUi;@override $MensajeUICopyWith<$Res>? get eventoUI;

}
/// @nodoc
class __$ListaRutaScreenStateCopyWithImpl<$Res>
    implements _$ListaRutaScreenStateCopyWith<$Res> {
  __$ListaRutaScreenStateCopyWithImpl(this._self, this._then);

  final _ListaRutaScreenState _self;
  final $Res Function(_ListaRutaScreenState) _then;

/// Create a copy of ListaRutaScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isCargando = null,Object? rutas = null,Object? mensajeUi = freezed,Object? eventoUI = freezed,}) {
  return _then(_ListaRutaScreenState(
isCargando: null == isCargando ? _self.isCargando : isCargando // ignore: cast_nullable_to_non_nullable
as bool,rutas: null == rutas ? _self._rutas : rutas // ignore: cast_nullable_to_non_nullable
as List<Ruta>,mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as MensajeUI?,
  ));
}

/// Create a copy of ListaRutaScreenState
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
}/// Create a copy of ListaRutaScreenState
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
