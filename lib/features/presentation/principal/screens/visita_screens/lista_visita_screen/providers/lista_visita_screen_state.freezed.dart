// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lista_visita_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListaVisitaScreenState {

 bool get isCargando; List<Visita> get visitas; MensajeUI? get mensajeUi; MensajeUI? get eventoUI;
/// Create a copy of ListaVisitaScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListaVisitaScreenStateCopyWith<ListaVisitaScreenState> get copyWith => _$ListaVisitaScreenStateCopyWithImpl<ListaVisitaScreenState>(this as ListaVisitaScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListaVisitaScreenState&&(identical(other.isCargando, isCargando) || other.isCargando == isCargando)&&const DeepCollectionEquality().equals(other.visitas, visitas)&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI));
}


@override
int get hashCode => Object.hash(runtimeType,isCargando,const DeepCollectionEquality().hash(visitas),mensajeUi,eventoUI);

@override
String toString() {
  return 'ListaVisitaScreenState(isCargando: $isCargando, visitas: $visitas, mensajeUi: $mensajeUi, eventoUI: $eventoUI)';
}


}

/// @nodoc
abstract mixin class $ListaVisitaScreenStateCopyWith<$Res>  {
  factory $ListaVisitaScreenStateCopyWith(ListaVisitaScreenState value, $Res Function(ListaVisitaScreenState) _then) = _$ListaVisitaScreenStateCopyWithImpl;
@useResult
$Res call({
 bool isCargando, List<Visita> visitas, MensajeUI? mensajeUi, MensajeUI? eventoUI
});


$MensajeUICopyWith<$Res>? get mensajeUi;$MensajeUICopyWith<$Res>? get eventoUI;

}
/// @nodoc
class _$ListaVisitaScreenStateCopyWithImpl<$Res>
    implements $ListaVisitaScreenStateCopyWith<$Res> {
  _$ListaVisitaScreenStateCopyWithImpl(this._self, this._then);

  final ListaVisitaScreenState _self;
  final $Res Function(ListaVisitaScreenState) _then;

/// Create a copy of ListaVisitaScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isCargando = null,Object? visitas = null,Object? mensajeUi = freezed,Object? eventoUI = freezed,}) {
  return _then(_self.copyWith(
isCargando: null == isCargando ? _self.isCargando : isCargando // ignore: cast_nullable_to_non_nullable
as bool,visitas: null == visitas ? _self.visitas : visitas // ignore: cast_nullable_to_non_nullable
as List<Visita>,mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as MensajeUI?,
  ));
}
/// Create a copy of ListaVisitaScreenState
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
}/// Create a copy of ListaVisitaScreenState
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


/// Adds pattern-matching-related methods to [ListaVisitaScreenState].
extension ListaVisitaScreenStatePatterns on ListaVisitaScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListaVisitaScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListaVisitaScreenState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListaVisitaScreenState value)  $default,){
final _that = this;
switch (_that) {
case _ListaVisitaScreenState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListaVisitaScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _ListaVisitaScreenState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isCargando,  List<Visita> visitas,  MensajeUI? mensajeUi,  MensajeUI? eventoUI)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListaVisitaScreenState() when $default != null:
return $default(_that.isCargando,_that.visitas,_that.mensajeUi,_that.eventoUI);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isCargando,  List<Visita> visitas,  MensajeUI? mensajeUi,  MensajeUI? eventoUI)  $default,) {final _that = this;
switch (_that) {
case _ListaVisitaScreenState():
return $default(_that.isCargando,_that.visitas,_that.mensajeUi,_that.eventoUI);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isCargando,  List<Visita> visitas,  MensajeUI? mensajeUi,  MensajeUI? eventoUI)?  $default,) {final _that = this;
switch (_that) {
case _ListaVisitaScreenState() when $default != null:
return $default(_that.isCargando,_that.visitas,_that.mensajeUi,_that.eventoUI);case _:
  return null;

}
}

}

/// @nodoc


class _ListaVisitaScreenState extends ListaVisitaScreenState {
  const _ListaVisitaScreenState({this.isCargando = true, final  List<Visita> visitas = const [], this.mensajeUi, this.eventoUI}): _visitas = visitas,super._();
  

@override@JsonKey() final  bool isCargando;
 final  List<Visita> _visitas;
@override@JsonKey() List<Visita> get visitas {
  if (_visitas is EqualUnmodifiableListView) return _visitas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_visitas);
}

@override final  MensajeUI? mensajeUi;
@override final  MensajeUI? eventoUI;

/// Create a copy of ListaVisitaScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListaVisitaScreenStateCopyWith<_ListaVisitaScreenState> get copyWith => __$ListaVisitaScreenStateCopyWithImpl<_ListaVisitaScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListaVisitaScreenState&&(identical(other.isCargando, isCargando) || other.isCargando == isCargando)&&const DeepCollectionEquality().equals(other._visitas, _visitas)&&(identical(other.mensajeUi, mensajeUi) || other.mensajeUi == mensajeUi)&&(identical(other.eventoUI, eventoUI) || other.eventoUI == eventoUI));
}


@override
int get hashCode => Object.hash(runtimeType,isCargando,const DeepCollectionEquality().hash(_visitas),mensajeUi,eventoUI);

@override
String toString() {
  return 'ListaVisitaScreenState(isCargando: $isCargando, visitas: $visitas, mensajeUi: $mensajeUi, eventoUI: $eventoUI)';
}


}

/// @nodoc
abstract mixin class _$ListaVisitaScreenStateCopyWith<$Res> implements $ListaVisitaScreenStateCopyWith<$Res> {
  factory _$ListaVisitaScreenStateCopyWith(_ListaVisitaScreenState value, $Res Function(_ListaVisitaScreenState) _then) = __$ListaVisitaScreenStateCopyWithImpl;
@override @useResult
$Res call({
 bool isCargando, List<Visita> visitas, MensajeUI? mensajeUi, MensajeUI? eventoUI
});


@override $MensajeUICopyWith<$Res>? get mensajeUi;@override $MensajeUICopyWith<$Res>? get eventoUI;

}
/// @nodoc
class __$ListaVisitaScreenStateCopyWithImpl<$Res>
    implements _$ListaVisitaScreenStateCopyWith<$Res> {
  __$ListaVisitaScreenStateCopyWithImpl(this._self, this._then);

  final _ListaVisitaScreenState _self;
  final $Res Function(_ListaVisitaScreenState) _then;

/// Create a copy of ListaVisitaScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isCargando = null,Object? visitas = null,Object? mensajeUi = freezed,Object? eventoUI = freezed,}) {
  return _then(_ListaVisitaScreenState(
isCargando: null == isCargando ? _self.isCargando : isCargando // ignore: cast_nullable_to_non_nullable
as bool,visitas: null == visitas ? _self._visitas : visitas // ignore: cast_nullable_to_non_nullable
as List<Visita>,mensajeUi: freezed == mensajeUi ? _self.mensajeUi : mensajeUi // ignore: cast_nullable_to_non_nullable
as MensajeUI?,eventoUI: freezed == eventoUI ? _self.eventoUI : eventoUI // ignore: cast_nullable_to_non_nullable
as MensajeUI?,
  ));
}

/// Create a copy of ListaVisitaScreenState
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
}/// Create a copy of ListaVisitaScreenState
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
