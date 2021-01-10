import 'package:dbdemo2/pages/appmain.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'pages/sign_in.dart';
import 'pages/sign_up.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox("pdp_online");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIN(),
      routes: {
        SignIN.id:(context) => SignIN(),
        SignUP.id:(context) => SignUP(),
        App.id:(context) => App(),
      },
    );
  }
}
