import 'package:demo_app_windows_getx_api/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class RecipeListView extends StatelessWidget {
  //const RecipeListView({Key? key}) : super(key: key); //no need
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Obx((){
            if(homeController.isLoading.value)
              return Center(child: CircularProgressIndicator(),);
            else
              return ListView.builder(
                  itemCount: homeController.recipeList.length,
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 150,
                              height: 100,
                              margin: EdgeInsets.fromLTRB(16, 8, 8, 8),
                              child: Column(
                                children: [
                                  Text(homeController.recipeList[index].results.toString())
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    );
                  });
          }),
        ),
      ),
    );
  }
}
