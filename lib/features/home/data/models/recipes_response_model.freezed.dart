// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipes_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecipesResponseModel {

 List<RecipeModel> get recipes; int get total; int get skip; int get limit;
/// Create a copy of RecipesResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipesResponseModelCopyWith<RecipesResponseModel> get copyWith => _$RecipesResponseModelCopyWithImpl<RecipesResponseModel>(this as RecipesResponseModel, _$identity);

  /// Serializes this RecipesResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipesResponseModel&&const DeepCollectionEquality().equals(other.recipes, recipes)&&(identical(other.total, total) || other.total == total)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(recipes),total,skip,limit);

@override
String toString() {
  return 'RecipesResponseModel(recipes: $recipes, total: $total, skip: $skip, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $RecipesResponseModelCopyWith<$Res>  {
  factory $RecipesResponseModelCopyWith(RecipesResponseModel value, $Res Function(RecipesResponseModel) _then) = _$RecipesResponseModelCopyWithImpl;
@useResult
$Res call({
 List<RecipeModel> recipes, int total, int skip, int limit
});




}
/// @nodoc
class _$RecipesResponseModelCopyWithImpl<$Res>
    implements $RecipesResponseModelCopyWith<$Res> {
  _$RecipesResponseModelCopyWithImpl(this._self, this._then);

  final RecipesResponseModel _self;
  final $Res Function(RecipesResponseModel) _then;

/// Create a copy of RecipesResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recipes = null,Object? total = null,Object? skip = null,Object? limit = null,}) {
  return _then(_self.copyWith(
recipes: null == recipes ? _self.recipes : recipes // ignore: cast_nullable_to_non_nullable
as List<RecipeModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipesResponseModel].
extension RecipesResponseModelPatterns on RecipesResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipesResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipesResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipesResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _RecipesResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipesResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _RecipesResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RecipeModel> recipes,  int total,  int skip,  int limit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipesResponseModel() when $default != null:
return $default(_that.recipes,_that.total,_that.skip,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RecipeModel> recipes,  int total,  int skip,  int limit)  $default,) {final _that = this;
switch (_that) {
case _RecipesResponseModel():
return $default(_that.recipes,_that.total,_that.skip,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RecipeModel> recipes,  int total,  int skip,  int limit)?  $default,) {final _that = this;
switch (_that) {
case _RecipesResponseModel() when $default != null:
return $default(_that.recipes,_that.total,_that.skip,_that.limit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecipesResponseModel implements RecipesResponseModel {
  const _RecipesResponseModel({required final  List<RecipeModel> recipes, required this.total, required this.skip, required this.limit}): _recipes = recipes;
  factory _RecipesResponseModel.fromJson(Map<String, dynamic> json) => _$RecipesResponseModelFromJson(json);

 final  List<RecipeModel> _recipes;
@override List<RecipeModel> get recipes {
  if (_recipes is EqualUnmodifiableListView) return _recipes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recipes);
}

@override final  int total;
@override final  int skip;
@override final  int limit;

/// Create a copy of RecipesResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipesResponseModelCopyWith<_RecipesResponseModel> get copyWith => __$RecipesResponseModelCopyWithImpl<_RecipesResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipesResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipesResponseModel&&const DeepCollectionEquality().equals(other._recipes, _recipes)&&(identical(other.total, total) || other.total == total)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_recipes),total,skip,limit);

@override
String toString() {
  return 'RecipesResponseModel(recipes: $recipes, total: $total, skip: $skip, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$RecipesResponseModelCopyWith<$Res> implements $RecipesResponseModelCopyWith<$Res> {
  factory _$RecipesResponseModelCopyWith(_RecipesResponseModel value, $Res Function(_RecipesResponseModel) _then) = __$RecipesResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<RecipeModel> recipes, int total, int skip, int limit
});




}
/// @nodoc
class __$RecipesResponseModelCopyWithImpl<$Res>
    implements _$RecipesResponseModelCopyWith<$Res> {
  __$RecipesResponseModelCopyWithImpl(this._self, this._then);

  final _RecipesResponseModel _self;
  final $Res Function(_RecipesResponseModel) _then;

/// Create a copy of RecipesResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recipes = null,Object? total = null,Object? skip = null,Object? limit = null,}) {
  return _then(_RecipesResponseModel(
recipes: null == recipes ? _self._recipes : recipes // ignore: cast_nullable_to_non_nullable
as List<RecipeModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
