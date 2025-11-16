// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'barra_superior_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BarraSuperiorState {

 String? get titulo;// String? subtitulo,
 List<Widget>? get acciones;
/// Create a copy of BarraSuperiorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BarraSuperiorStateCopyWith<BarraSuperiorState> get copyWith => _$BarraSuperiorStateCopyWithImpl<BarraSuperiorState>(this as BarraSuperiorState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BarraSuperiorState&&(identical(other.titulo, titulo) || other.titulo == titulo)&&const DeepCollectionEquality().equals(other.acciones, acciones));
}


@override
int get hashCode => Object.hash(runtimeType,titulo,const DeepCollectionEquality().hash(acciones));

@override
String toString() {
  return 'BarraSuperiorState(titulo: $titulo, acciones: $acciones)';
}


}

/// @nodoc
abstract mixin class $BarraSuperiorStateCopyWith<$Res>  {
  factory $BarraSuperiorStateCopyWith(BarraSuperiorState value, $Res Function(BarraSuperiorState) _then) = _$BarraSuperiorStateCopyWithImpl;
@useResult
$Res call({
 String? titulo, List<Widget>? acciones
});




}
/// @nodoc
class _$BarraSuperiorStateCopyWithImpl<$Res>
    implements $BarraSuperiorStateCopyWith<$Res> {
  _$BarraSuperiorStateCopyWithImpl(this._self, this._then);

  final BarraSuperiorState _self;
  final $Res Function(BarraSuperiorState) _then;

/// Create a copy of BarraSuperiorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? titulo = freezed,Object? acciones = freezed,}) {
  return _then(_self.copyWith(
titulo: freezed == titulo ? _self.titulo : titulo // ignore: cast_nullable_to_non_nullable
as String?,acciones: freezed == acciones ? _self.acciones : acciones // ignore: cast_nullable_to_non_nullable
as List<Widget>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BarraSuperiorState].
extension BarraSuperiorStatePatterns on BarraSuperiorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BarraSuperiorState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BarraSuperiorState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BarraSuperiorState value)  $default,){
final _that = this;
switch (_that) {
case _BarraSuperiorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BarraSuperiorState value)?  $default,){
final _that = this;
switch (_that) {
case _BarraSuperiorState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? titulo,  List<Widget>? acciones)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BarraSuperiorState() when $default != null:
return $default(_that.titulo,_that.acciones);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? titulo,  List<Widget>? acciones)  $default,) {final _that = this;
switch (_that) {
case _BarraSuperiorState():
return $default(_that.titulo,_that.acciones);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? titulo,  List<Widget>? acciones)?  $default,) {final _that = this;
switch (_that) {
case _BarraSuperiorState() when $default != null:
return $default(_that.titulo,_that.acciones);case _:
  return null;

}
}

}

/// @nodoc


class _BarraSuperiorState extends BarraSuperiorState {
  const _BarraSuperiorState({this.titulo, final  List<Widget>? acciones}): _acciones = acciones,super._();
  

@override final  String? titulo;
// String? subtitulo,
 final  List<Widget>? _acciones;
// String? subtitulo,
@override List<Widget>? get acciones {
  final value = _acciones;
  if (value == null) return null;
  if (_acciones is EqualUnmodifiableListView) return _acciones;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BarraSuperiorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BarraSuperiorStateCopyWith<_BarraSuperiorState> get copyWith => __$BarraSuperiorStateCopyWithImpl<_BarraSuperiorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BarraSuperiorState&&(identical(other.titulo, titulo) || other.titulo == titulo)&&const DeepCollectionEquality().equals(other._acciones, _acciones));
}


@override
int get hashCode => Object.hash(runtimeType,titulo,const DeepCollectionEquality().hash(_acciones));

@override
String toString() {
  return 'BarraSuperiorState(titulo: $titulo, acciones: $acciones)';
}


}

/// @nodoc
abstract mixin class _$BarraSuperiorStateCopyWith<$Res> implements $BarraSuperiorStateCopyWith<$Res> {
  factory _$BarraSuperiorStateCopyWith(_BarraSuperiorState value, $Res Function(_BarraSuperiorState) _then) = __$BarraSuperiorStateCopyWithImpl;
@override @useResult
$Res call({
 String? titulo, List<Widget>? acciones
});




}
/// @nodoc
class __$BarraSuperiorStateCopyWithImpl<$Res>
    implements _$BarraSuperiorStateCopyWith<$Res> {
  __$BarraSuperiorStateCopyWithImpl(this._self, this._then);

  final _BarraSuperiorState _self;
  final $Res Function(_BarraSuperiorState) _then;

/// Create a copy of BarraSuperiorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? titulo = freezed,Object? acciones = freezed,}) {
  return _then(_BarraSuperiorState(
titulo: freezed == titulo ? _self.titulo : titulo // ignore: cast_nullable_to_non_nullable
as String?,acciones: freezed == acciones ? _self._acciones : acciones // ignore: cast_nullable_to_non_nullable
as List<Widget>?,
  ));
}


}

// dart format on
