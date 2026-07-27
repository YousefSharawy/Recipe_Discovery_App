class RecipeEntity {
  RecipeEntity({
    required this.id,
required this.name,
required this.ingredients,
required this.instructions,
required this.prepTimeMinutes,
required this.cookTimeMinutes,
required this.caloriesPerServing,
required this.image,
required this.mealType
  });
  final int id;
  final String name;
final List<String> ingredients;
final List<String> instructions;
final double prepTimeMinutes;
final double cookTimeMinutes;
final double caloriesPerServing;
final String image;
final List<String> mealType;
  
}