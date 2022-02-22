import 'package:get/get.dart';

import '../all_recipe_model.dart';

class AllRecipeProvider extends GetConnect {
  @override
  void onInit() {
    // httpClient.defaultDecoder = (map) {
    //   if (map is Map<String, dynamic>) return AllRecipe.fromJson(map);
    //   if (map is List)
    //     return map.map((item) => AllRecipe.fromJson(item)).toList();
    // };
    // httpClient.baseUrl = 'http://127.0.0.1:8000';
  }

  // Future<AllRecipe?> getAllRecipe() async {
  //   // final response = await get('allrecipe/$id');
  //   final response = await get('api/get/recipe');
  //   print("res:::: 3"+response.toString());
  //   return response.body;
  // }
  //
  // Future<Response<AllRecipe>> postAllRecipe(AllRecipe allrecipe) async =>
  //     await post('allrecipe', allrecipe);
  // Future<Response> deleteAllRecipe(int id) async =>
  //     await delete('allrecipe/$id');

  Future<dynamic> getmyallrecipe() async{

    print("into await");
    final response = await get("http://172.16.154.8:8000/api/get/recipe");

    print("response 11: "+response.toString());
    print("response 12: "+response.statusCode.toString());
    print("response 13: "+response.body);
    print("response 14: "+response.body['result']);

    if(response.status.hasError){
      return Future.error(response.status);
    }else{
      return response.body['result'];
    }

  }
}
