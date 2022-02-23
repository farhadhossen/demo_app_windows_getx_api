import 'package:demo_app_windows_getx_api/app/modules/home/views/recipe_list_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {

    return RecipeListView();

    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: controller.obx(
              (data) => Center(
              child: ListView.builder(
                  itemCount: data!.length,
                  itemBuilder: (BuildContext context, int index){
                    return Card(
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(data[index]['title']),
                            subtitle: Text(data[index]['description']),
                            // leading: CircleAvatar(
                            //   backgroundImage: NetworkImage(
                            //       data[index]['picture']['thumbnail']
                            //   ),
                            // ),

                          )
                        ],
                      ),
                    );
                  })
          )
      ),
    );
  }
}