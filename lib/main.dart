import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_holstic2/Provider/Shop_provider.dart';
import 'package:shop_app_holstic2/Screens/Home_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ShopProvider(),)
    ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:HomePage(),
    );
  }
}


