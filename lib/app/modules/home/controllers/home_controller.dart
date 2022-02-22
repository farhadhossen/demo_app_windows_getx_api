import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../providers/all_recipe_provider.dart';

class HomeController extends GetxController with StateMixin<dynamic> {
  //TODO: Implement HomeController


  @override
  void onInit() {
    super.onInit();

    AllRecipeProvider().getUser().then((value) {
      change(value, status: RxStatus.success());
      print("datas:::");
      print(value.toString());
    },onError: (error){
      change(null,status: RxStatus.error(error.toString()));
      print("errors:::");
      print(error.toString());
    });

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

}
