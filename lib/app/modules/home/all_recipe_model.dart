class AllRecipe {
  String? status;
  List<Results>? results;

  AllRecipe({this.status, this.results});

  AllRecipe.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  int? recipeId;
  String? title;
  String? ingName;
  String? description;
  String? image;
  String? timeBased;
  String? tasteBased;
  int? isVeg;
  int? isQuick;

  Results(
      {this.recipeId,
      this.title,
      this.ingName,
      this.description,
      this.image,
      this.timeBased,
      this.tasteBased,
      this.isVeg,
      this.isQuick});

  Results.fromJson(Map<String, dynamic> json) {
    recipeId = json['recipe_id'];
    title = json['title'];
    ingName = json['ing_name'];
    description = json['description'];
    image = json['image'];
    timeBased = json['time_based'];
    tasteBased = json['taste_based'];
    isVeg = json['isVeg'];
    isQuick = json['isQuick'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['recipe_id'] = recipeId;
    data['title'] = title;
    data['ing_name'] = ingName;
    data['description'] = description;
    data['image'] = image;
    data['time_based'] = timeBased;
    data['taste_based'] = tasteBased;
    data['isVeg'] = isVeg;
    data['isQuick'] = isQuick;
    return data;
  }
}
