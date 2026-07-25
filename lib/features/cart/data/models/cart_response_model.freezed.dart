// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartResponseModel {

 List<CartModel> get carts; int get total; int get skip; int get limit;
/// Create a copy of CartResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartResponseModelCopyWith<CartResponseModel> get copyWith => _$CartResponseModelCopyWithImpl<CartResponseModel>(this as CartResponseModel, _$identity);

  /// Serializes this CartResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartResponseModel&&const DeepCollectionEquality().equals(other.carts, carts)&&(identical(other.total, total) || other.total == total)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(carts),total,skip,limit);

@override
String toString() {
  return 'CartResponseModel(carts: $carts, total: $total, skip: $skip, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $CartResponseModelCopyWith<$Res>  {
  factory $CartResponseModelCopyWith(CartResponseModel value, $Res Function(CartResponseModel) _then) = _$CartResponseModelCopyWithImpl;
@useResult
$Res call({
 List<CartModel> carts, int total, int skip, int limit
});




}
/// @nodoc
class _$CartResponseModelCopyWithImpl<$Res>
    implements $CartResponseModelCopyWith<$Res> {
  _$CartResponseModelCopyWithImpl(this._self, this._then);

  final CartResponseModel _self;
  final $Res Function(CartResponseModel) _then;

/// Create a copy of CartResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? carts = null,Object? total = null,Object? skip = null,Object? limit = null,}) {
  return _then(_self.copyWith(
carts: null == carts ? _self.carts : carts // ignore: cast_nullable_to_non_nullable
as List<CartModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CartResponseModel].
extension CartResponseModelPatterns on CartResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CartResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CartModel> carts,  int total,  int skip,  int limit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartResponseModel() when $default != null:
return $default(_that.carts,_that.total,_that.skip,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CartModel> carts,  int total,  int skip,  int limit)  $default,) {final _that = this;
switch (_that) {
case _CartResponseModel():
return $default(_that.carts,_that.total,_that.skip,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CartModel> carts,  int total,  int skip,  int limit)?  $default,) {final _that = this;
switch (_that) {
case _CartResponseModel() when $default != null:
return $default(_that.carts,_that.total,_that.skip,_that.limit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartResponseModel implements CartResponseModel {
  const _CartResponseModel({required final  List<CartModel> carts, required this.total, required this.skip, required this.limit}): _carts = carts;
  factory _CartResponseModel.fromJson(Map<String, dynamic> json) => _$CartResponseModelFromJson(json);

 final  List<CartModel> _carts;
@override List<CartModel> get carts {
  if (_carts is EqualUnmodifiableListView) return _carts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_carts);
}

@override final  int total;
@override final  int skip;
@override final  int limit;

/// Create a copy of CartResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartResponseModelCopyWith<_CartResponseModel> get copyWith => __$CartResponseModelCopyWithImpl<_CartResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartResponseModel&&const DeepCollectionEquality().equals(other._carts, _carts)&&(identical(other.total, total) || other.total == total)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_carts),total,skip,limit);

@override
String toString() {
  return 'CartResponseModel(carts: $carts, total: $total, skip: $skip, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$CartResponseModelCopyWith<$Res> implements $CartResponseModelCopyWith<$Res> {
  factory _$CartResponseModelCopyWith(_CartResponseModel value, $Res Function(_CartResponseModel) _then) = __$CartResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<CartModel> carts, int total, int skip, int limit
});




}
/// @nodoc
class __$CartResponseModelCopyWithImpl<$Res>
    implements _$CartResponseModelCopyWith<$Res> {
  __$CartResponseModelCopyWithImpl(this._self, this._then);

  final _CartResponseModel _self;
  final $Res Function(_CartResponseModel) _then;

/// Create a copy of CartResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? carts = null,Object? total = null,Object? skip = null,Object? limit = null,}) {
  return _then(_CartResponseModel(
carts: null == carts ? _self._carts : carts // ignore: cast_nullable_to_non_nullable
as List<CartModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
