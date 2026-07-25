// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartStates {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartStates);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartStates()';
}


}

/// @nodoc
class $CartStatesCopyWith<$Res>  {
$CartStatesCopyWith(CartStates _, $Res Function(CartStates) __);
}


/// Adds pattern-matching-related methods to [CartStates].
extension CartStatesPatterns on CartStates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CartInitial value)?  initial,TResult Function( CartLoading value)?  loading,TResult Function( CartSuccess value)?  success,TResult Function( CartError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CartInitial() when initial != null:
return initial(_that);case CartLoading() when loading != null:
return loading(_that);case CartSuccess() when success != null:
return success(_that);case CartError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CartInitial value)  initial,required TResult Function( CartLoading value)  loading,required TResult Function( CartSuccess value)  success,required TResult Function( CartError value)  error,}){
final _that = this;
switch (_that) {
case CartInitial():
return initial(_that);case CartLoading():
return loading(_that);case CartSuccess():
return success(_that);case CartError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CartInitial value)?  initial,TResult? Function( CartLoading value)?  loading,TResult? Function( CartSuccess value)?  success,TResult? Function( CartError value)?  error,}){
final _that = this;
switch (_that) {
case CartInitial() when initial != null:
return initial(_that);case CartLoading() when loading != null:
return loading(_that);case CartSuccess() when success != null:
return success(_that);case CartError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<ProductEntity> products)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CartInitial() when initial != null:
return initial();case CartLoading() when loading != null:
return loading();case CartSuccess() when success != null:
return success(_that.products);case CartError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<ProductEntity> products)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case CartInitial():
return initial();case CartLoading():
return loading();case CartSuccess():
return success(_that.products);case CartError():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<ProductEntity> products)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case CartInitial() when initial != null:
return initial();case CartLoading() when loading != null:
return loading();case CartSuccess() when success != null:
return success(_that.products);case CartError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class CartInitial implements CartStates {
  const CartInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartStates.initial()';
}


}




/// @nodoc


class CartLoading implements CartStates {
  const CartLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartStates.loading()';
}


}




/// @nodoc


class CartSuccess implements CartStates {
  const CartSuccess(final  List<ProductEntity> products): _products = products;
  

 final  List<ProductEntity> _products;
 List<ProductEntity> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of CartStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartSuccessCopyWith<CartSuccess> get copyWith => _$CartSuccessCopyWithImpl<CartSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartSuccess&&const DeepCollectionEquality().equals(other._products, _products));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'CartStates.success(products: $products)';
}


}

/// @nodoc
abstract mixin class $CartSuccessCopyWith<$Res> implements $CartStatesCopyWith<$Res> {
  factory $CartSuccessCopyWith(CartSuccess value, $Res Function(CartSuccess) _then) = _$CartSuccessCopyWithImpl;
@useResult
$Res call({
 List<ProductEntity> products
});




}
/// @nodoc
class _$CartSuccessCopyWithImpl<$Res>
    implements $CartSuccessCopyWith<$Res> {
  _$CartSuccessCopyWithImpl(this._self, this._then);

  final CartSuccess _self;
  final $Res Function(CartSuccess) _then;

/// Create a copy of CartStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? products = null,}) {
  return _then(CartSuccess(
null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,
  ));
}


}

/// @nodoc


class CartError implements CartStates {
  const CartError(this.message);
  

 final  String message;

/// Create a copy of CartStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartErrorCopyWith<CartError> get copyWith => _$CartErrorCopyWithImpl<CartError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CartStates.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $CartErrorCopyWith<$Res> implements $CartStatesCopyWith<$Res> {
  factory $CartErrorCopyWith(CartError value, $Res Function(CartError) _then) = _$CartErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CartErrorCopyWithImpl<$Res>
    implements $CartErrorCopyWith<$Res> {
  _$CartErrorCopyWithImpl(this._self, this._then);

  final CartError _self;
  final $Res Function(CartError) _then;

/// Create a copy of CartStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CartError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
