 class DataModel {
  List<Recipe>? recipes;

  int? total;
  int? skip;
  int? limit;

  DataModel({
    required this.recipes,
    required this.total,
    required this.skip,
    required this.limit,
  });


  factory DataModel.fromJson(Map json)
  {
    return DataModel(
      recipes: List<Recipe>.from(json['recipes'].map((x) => Recipe.fromJson(x))),
      limit: json['limit'],
      skip: json['skip'],
      total: json['total'],
    );
  }


}

class Recipe {
  int id, prepTimeMinutes, cookTimeMinutes, servings, caloriesPerServing, userId, reviewCount;
  String name, cuisine, image, difficulty;
  double rating;
  List<String> ingredients;
  List<String> instructions;
  List<String> tags;
  List<String> mealType;

  Recipe({
    required this.id,
    required this.name,
    required this.ingredients,
    required this.instructions,
    required this.prepTimeMinutes,
    required this.cookTimeMinutes,
    required this.servings,
    required this.difficulty,
    required this.cuisine,
    required this.caloriesPerServing,
    required this.tags,
    required this.userId,
    required this.image,
    required this.rating,
    required this.reviewCount,
    required this.mealType,
  });


  factory Recipe.fromJson(Map json)
  {
    return Recipe(
        id: json['id'],
        name: json['name'],
        ingredients: List<String>.from(json['ingredients']),
        instructions:  List<String>.from(json['instructions']),
        prepTimeMinutes: json['prepTimeMinutes'],
        cookTimeMinutes: json['cookTimeMinutes'],
        servings: json['servings'],
        difficulty: json['difficulty'],
        cuisine: json['cuisine'],
        caloriesPerServing: json['caloriesPerServing'],
        tags:List<String>.from(json['tags']),
        userId: json['userId'],
        image: json['image'],
        rating:  json['rating'].toDouble(),
        reviewCount: json['reviewCount'],
        mealType: List<String>.from(json['mealType']),
    );
  }

}


