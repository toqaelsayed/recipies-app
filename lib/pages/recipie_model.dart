class RecipeModel {
  final String name;
  final String image;
  final String category;
  final String duration;
  final String serving;

  RecipeModel({
    required this.name,
    required this.image,
    required this.category,
    required this.duration,
    required this.serving,
  });
}

/// get this file in the sourcode
final trandingRecipes = [
  RecipeModel(
    name: "french toast",
    image: "assets/img1.png",
    category: "quick bread",
    duration: "15 min",
    serving: "2 Serving",
  ),
  RecipeModel(
    name: "Muffins",
    image: "assets/image3.png",
    category: "quick bread",
    duration: "10 min",
    serving: "3 Seving",
  ),
  RecipeModel(
    name: "Cinnamon Toast",
    image: "assets/img2.png",
    category: "quick bread",
    duration: "5 min",
    serving: "1 Seving",
  ),
];

final latestRecipes = [
  RecipeModel(
    name: "Muschel-Spaghetti in Tomatensugo",
    image: "assets/muschel_spaghetti_in_tomatensugo.jpeg",
    category: "Pasta",
    duration: "1 Hour",
    serving: "2 Seving",
  ),
  RecipeModel(
    name: "Beef Bibimbap with Triple Egg",
    image: "assets/beef_bibimbap_recipe.jpeg",
    category: "Beef",
    duration: "1 Hour",
    serving: "3 Seving",
  ),
  RecipeModel(
    name: "Grilled Chicken Salad + Homemade Sweet Onion Dressing",
    image: "assets/grilled_chicken_salad.jpeg",
    category: "Chicken",
    duration: "1 Hour",
    serving: "2 Seving",
  ),
];
