import 'package:get/get.dart';

import '../all_recipe_model.dart';
import 'package:http/http.dart' as http;

class AllRecipeProvider extends GetConnect {
  @override
  void onInit() {

  }

  Future<List<dynamic>> getUser() async{
    // final response = await get('http://05d9-103-112-206-10.ngrok.io/api/get/recipe');
    final response = await get('http://172.16.154.8:8000/api/get/recipe');
    if(response.status.hasError){
      return Future.error(response.statusText!);
    } else {
      return response.body['results'];
    }
  }

}
