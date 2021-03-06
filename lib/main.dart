import 'package:astro_tak/providers/home_provider.dart';
import 'package:astro_tak/providers/profile_provider.dart';
import 'package:astro_tak/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:astro_tak/navigation_manager/navigation_manager.dart';
import 'package:astro_tak/network/network_service.dart';
import 'package:provider/provider.dart';
import  'package:astro_tak/screens/profile_tab/tabs.dart';



void main() {
  NetworkService.create();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeProvider>(create: (context) => HomeProvider()),
        ChangeNotifierProvider<ProfileProvider>(create: (context) => ProfileProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: const HomeScreen(),
        onGenerateRoute: NavigationManager.onGenerateRoute,
      ),
    );
  }
}