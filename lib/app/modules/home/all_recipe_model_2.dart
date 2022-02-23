// To parse this JSON data, do
//
//     final allRecipeModel2 = allRecipeModel2FromJson(jsonString);

import 'dart:convert';

AllRecipeModel2 allRecipeModel2FromJson(String str) => AllRecipeModel2.fromJson(json.decode(str));

String allRecipeModel2ToJson(AllRecipeModel2 data) => json.encode(data.toJson());

class AllRecipeModel2 {
  AllRecipeModel2({
    this.status,
    this.results,
  });

  String? status;
  List<Result>? results;

  factory AllRecipeModel2.fromJson(Map<String, dynamic> json) => AllRecipeModel2(
    status: json["status"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "results": List<dynamic>.from(results!.map((x) => x.toJson())),
  };
}

class Result {
  Result({
    this.recipeId,
    this.title,
    this.ingName,
    this.description,
    this.image,
    this.timeBased,
    this.tasteBased,
    this.isVeg,
    this.isQuick,
  });

  int? recipeId;
  String? title;
  String? ingName;
  String? description;
  String? image;
  String? timeBased;
  String? tasteBased;
  int? isVeg;
  int? isQuick;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    recipeId: json["recipe_id"],
    title: json["title"],
    ingName: json["ing_name"],
    description: json["description"],
    image: json["image"],
    timeBased: json["time_based"],
    tasteBased: json["taste_based"],
    isVeg: json["isVeg"],
    isQuick: json["isQuick"],
  );

  Map<String, dynamic> toJson() => {
    "recipe_id": recipeId,
    "title": title,
    "ing_name": ingName,
    "description": description,
    "image": image,
    "time_based": timeBased,
    "taste_based": tasteBased,
    "isVeg": isVeg,
    "isQuick": isQuick,
  };
}
