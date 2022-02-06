import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_color/app_bar.dart';
import 'package:provider_color/color.dart';

import 'color_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ColorProvider(),
        child: MaterialApp(
          home: Scaffold(
            appBar: AppBarWidget(),
            body: ColorWidget(),
          ),
        ));
  }
  // @override
  // Widget build(BuildContext context) {
  //   return ChangeNotifierProvider(
  //     create: (context) => Provider.of<ColorProvider>(context),
  //     builder:(context, val){
  //         return MaterialApp(
  //       home: Scaffold(
  //         appBar: AppBar(
  //           title: Text("Color provider"),
  //           centerTitle: true,
  //         ),
  //         body: ColorWidget()
  //       ),
  //     )
  //     }
  //   );
  // }
}
