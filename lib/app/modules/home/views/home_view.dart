import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final url =
      'http://172.16.154.8:8000/api/get/recipe';

  void getApi() async {
    try {
      final response = await get(Uri.parse(url));
      final jsonData = jsonDecode(response.body);
      print(jsonData);
    } catch (err) {
      print(err);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Call'),
      ),
    );
  }
}


///////////////////////////////
// import 'package:flutter/material.dart';
//
// import 'package:get/get.dart';
//
// import '../controllers/home_controller.dart';
//
// class HomeView extends GetView<HomeController> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('HomeView'),
//         centerTitle: true,
//       ),
//       body: controller.obx(
//               (data) => Center(
//               child: ListView.builder(
//                   itemCount: data!.length,
//                   itemBuilder: (BuildContext context, int index){
//                     return Card(
//                       child: Column(
//                         children: [
//                           ListTile(
//                             title: Text(data[index]['title']),
//                             subtitle: Text(data[index]['description']),
//                             // leading: CircleAvatar(
//                             //   backgroundImage: NetworkImage(
//                             //       data[index]['picture']['thumbnail']
//                             //   ),
//                             // ),
//
//                           )
//                         ],
//                       ),
//                     );
//                   })
//           )
//       ),
//     );
//   }
// }