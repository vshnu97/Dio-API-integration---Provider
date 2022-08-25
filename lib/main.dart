import 'package:fake_api/app/home/view/screen_home.dart';
import 'package:fake_api/app/home/viewmodel/infrast.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [
       ChangeNotifierProvider<HomeProv>(create: ((context) => HomeProv())),
    ],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScreenHome(),
    );
  }
}
