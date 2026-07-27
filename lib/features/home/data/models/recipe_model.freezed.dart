// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecipeModel {

 int get id; String get name; List<String> get ingredients; List<String> get instructions; double get prepTimeMinutes; double get cookTimeMinutes; double get caloriesPerServing; String get image; List<String> get mealType;
/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeModelCopyWith<RecipeModel> get copyWith => _$RecipeModelCopyWithImpl<RecipeModel>(this as RecipeModel, _$identity);

  /// Serializes this RecipeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.ingredients, ingredients)&&const DeepCollectionEquality().equals(other.instructions, instructions)&&(identical(other.prepTimeMinutes, prepTimeMinutes) || other.prepTimeMinutes == prepTimeMinutes)&&(identical(other.cookTimeMinutes, cookTimeMinutes) || other.cookTimeMinutes == cookTimeMinutes)&&(identical(other.caloriesPerServing, caloriesPerServing) || other.caloriesPerServing == caloriesPerServing)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.mealType, mealType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(ingredients),const DeepCollectionEquality().hash(instructions),prepTimeMinutes,cookTimeMinutes,caloriesPerServing,image,const DeepCollectionEquality().hash(mealType));

@override
String toString() {
  return 'RecipeModel(id: $id, name: $name, ingredients: $ingredients, instructions: $instructions, prepTimeMinutes: $prepTimeMinutes, cookTimeMinutes: $cookTimeMinutes, caloriesPerServing: $caloriesPerServing, image: $image, mealType: $mealType)';
}


}

/// @nodoc
abstract mixin class $RecipeModelCopyWith<$Res>  {
  factory $RecipeModelCopyWith(RecipeModel value, $Res Function(RecipeModel) _then) = _$RecipeModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, List<String> ingredients, List<String> instructions, double prepTimeMinutes, double cookTimeMinutes, double caloriesPerServing, String image, List<String> mealType
});




}
/// @nodoc
class _$RecipeModelCopyWithImpl<$Res>
    implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._self, this._then);

  final RecipeModel _self;
  final $Res Function(RecipeModel) _then;

/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? ingredients = null,Object? instructions = null,Object? prepTimeMinutes = null,Object? cookTimeMinutes = null,Object? caloriesPerServing = null,Object? image = null,Object? mealType = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<String>,instructions: null == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as List<String>,prepTimeMinutes: null == prepTimeMinutes ? _self.prepTimeMinutes : prepTimeMinutes // ignore: cast_nullable_to_non_nullable
as double,cookTimeMinutes: null == cookTimeMinutes ? _self.cookTimeMinutes : cookTimeMinutes // ignore: cast_nullable_to_non_nullable
as double,caloriesPerServing: null == caloriesPerServing ? _self.caloriesPerServing : caloriesPerServing // ignore: cast_nullable_to_non_nullable
as double,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,mealType: null == mealType ? _self.mealType : mealType // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeModel].
extension RecipeModelPatterns on RecipeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeModel value)  $default,){
final _that = this;
switch (_that) {
case _RecipeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeModel value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  List<String> ingredients,  List<String> instructions,  double prepTimeMinutes,  double cookTimeMinutes,  double caloriesPerServing,  String image,  List<String> mealType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeModel() when $default != null:
return $default(_that.id,_that.name,_that.ingredients,_that.instructions,_that.prepTimeMinutes,_that.cookTimeMinutes,_that.caloriesPerServing,_that.image,_that.mealType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  List<String> ingredients,  List<String> instructions,  double prepTimeMinutes,  double cookTimeMinutes,  double caloriesPerServing,  String image,  List<String> mealType)  $default,) {final _that = this;
switch (_that) {
case _RecipeModel():
return $default(_that.id,_that.name,_that.ingredients,_that.instructions,_that.prepTimeMinutes,_that.cookTimeMinutes,_that.caloriesPerServing,_that.image,_that.mealType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  List<String> ingredients,  List<String> instructions,  double prepTimeMinutes,  double cookTimeMinutes,  double caloriesPerServing,  String image,  List<String> mealType)?  $default,) {final _that = this;
switch (_that) {
case _RecipeModel() when $default != null:
return $default(_that.id,_that.name,_that.ingredients,_that.instructions,_that.prepTimeMinutes,_that.cookTimeMinutes,_that.caloriesPerServing,_that.image,_that.mealType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecipeModel implements RecipeModel {
  const _RecipeModel({required this.id, required this.name, required final  List<String> ingredients, required final  List<String> instructions, required this.prepTimeMinutes, required this.cookTimeMinutes, required this.caloriesPerServing, required this.image, required final  List<String> mealType}): _ingredients = ingredients,_instructions = instructions,_mealType = mealType;
  factory _RecipeModel.fromJson(Map<String, dynamic> json) => _$RecipeModelFromJson(json);

@override final  int id;
@override final  String name;
 final  List<String> _ingredients;
@override List<String> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}

 final  List<String> _instructions;
@override List<String> get instructions {
  if (_instructions is EqualUnmodifiableListView) return _instructions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_instructions);
}

@override final  double prepTimeMinutes;
@override final  double cookTimeMinutes;
@override final  double caloriesPerServing;
@override final  String image;
 final  List<String> _mealType;
@override List<String> get mealType {
  if (_mealType is EqualUnmodifiableListView) return _mealType;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mealType);
}


/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeModelCopyWith<_RecipeModel> get copyWith => __$RecipeModelCopyWithImpl<_RecipeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&const DeepCollectionEquality().equals(other._instructions, _instructions)&&(identical(other.prepTimeMinutes, prepTimeMinutes) || other.prepTimeMinutes == prepTimeMinutes)&&(identical(other.cookTimeMinutes, cookTimeMinutes) || other.cookTimeMinutes == cookTimeMinutes)&&(identical(other.caloriesPerServing, caloriesPerServing) || other.caloriesPerServing == caloriesPerServing)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._mealType, _mealType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_ingredients),const DeepCollectionEquality().hash(_instructions),prepTimeMinutes,cookTimeMinutes,caloriesPerServing,image,const DeepCollectionEquality().hash(_mealType));

@override
String toString() {
  return 'RecipeModel(id: $id, name: $name, ingredients: $ingredients, instructions: $instructions, prepTimeMinutes: $prepTimeMinutes, cookTimeMinutes: $cookTimeMinutes, caloriesPerServing: $caloriesPerServing, image: $image, mealType: $mealType)';
}


}

/// @nodoc
abstract mixin class _$RecipeModelCopyWith<$Res> implements $RecipeModelCopyWith<$Res> {
  factory _$RecipeModelCopyWith(_RecipeModel value, $Res Function(_RecipeModel) _then) = __$RecipeModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, List<String> ingredients, List<String> instructions, double prepTimeMinutes, double cookTimeMinutes, double caloriesPerServing, String image, List<String> mealType
});




}
/// @nodoc
class __$RecipeModelCopyWithImpl<$Res>
    implements _$RecipeModelCopyWith<$Res> {
  __$RecipeModelCopyWithImpl(this._self, this._then);

  final _RecipeModel _self;
  final $Res Function(_RecipeModel) _then;

/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? ingredients = null,Object? instructions = null,Object? prepTimeMinutes = null,Object? cookTimeMinutes = null,Object? caloriesPerServing = null,Object? image = null,Object? mealType = null,}) {
  return _then(_RecipeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<String>,instructions: null == instructions ? _self._instructions : instructions // ignore: cast_nullable_to_non_nullable
as List<String>,prepTimeMinutes: null == prepTimeMinutes ? _self.prepTimeMinutes : prepTimeMinutes // ignore: cast_nullable_to_non_nullable
as double,cookTimeMinutes: null == cookTimeMinutes ? _self.cookTimeMinutes : cookTimeMinutes // ignore: cast_nullable_to_non_nullable
as double,caloriesPerServing: null == caloriesPerServing ? _self.caloriesPerServing : caloriesPerServing // ignore: cast_nullable_to_non_nullable
as double,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,mealType: null == mealType ? _self._mealType : mealType // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
