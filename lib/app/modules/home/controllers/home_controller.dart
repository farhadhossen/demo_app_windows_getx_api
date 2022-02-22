import 'package:get/get.dart';

import '../providers/all_recipe_provider.dart';

class HomeController extends GetxController with StateMixin<dynamic> {
  //TODO: Implement HomeController


  getmyallrecipe() {
    AllRecipeProvider().getmyallrecipe().then((resp){
      change(resp, status: RxStatus.success());
      print("res:::: 2"+resp.toString());
    }, onError: (err){
      change(null,
        status: RxStatus.error(err.toString()),
      );
    }
    );
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();



  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
