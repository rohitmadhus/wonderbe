import 'package:Wonderbe/providers/app.dart';
import 'package:Wonderbe/providers/category.dart';
import 'package:Wonderbe/providers/product.dart';
import 'package:Wonderbe/providers/slider.dart';
import 'package:Wonderbe/providers/user.dart';
import 'package:Wonderbe/screens/home.dart';
import 'package:Wonderbe/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider.value(value: AppProvider()),
    ChangeNotifierProvider.value(value: UserProvider()),
    ChangeNotifierProvider.value(value: SliderProvider.initialize()),
    ChangeNotifierProvider.value(value: CategoryProvider.initialize()),
    ChangeNotifierProvider.value(value: ProductProvider.initialize()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
