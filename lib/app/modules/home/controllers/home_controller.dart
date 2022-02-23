import 'package:demo_app_windows_getx_api/app/modules/home/all_recipe_model_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../providers/all_recipe_provider.dart';

class HomeController extends GetxController with StateMixin<dynamic> {
  //TODO: Implement HomeController

  var isLoading = true.obs;
  // var recipeList = <AllRecipeModel2>[].obs;
  var recipeList = List<AllRecipeModel2>.empty(growable: true).obs;
  // var recipeList = <AllRecipeModel2>().obs;

  // RxList<AllRecipeModel2> recipeList = RxList<AllRecipeModel2>();

  @override
  void onInit() {
    fetchRecipe();
    super.onInit();

  }

  void fetchRecipe() async{
    try{
      isLoading(true);
      var recipes = await AllRecipeProvider.fetchRecipes();
      if(recipes != null){
        print("hellooww:: "+recipes.toString());
       recipeList.add(recipes);
      }
    }finally{
      isLoading(false);
    }
  }


  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

}
