import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_mvvm/home_screen.dart';
import 'package:provider_mvvm/login/login_screen.dart';
import 'package:provider_mvvm/provider/auth_provider.dart';
import 'package:provider_mvvm/provider/count_provider.dart';
import 'package:provider_mvvm/provider/example_one_provider.dart';
import 'package:provider_mvvm/provider/favorite_provider.dart';
import 'package:provider_mvvm/provider/theme_changer_provider.dart';
import 'package:provider_mvvm/provider_screen.dart';
import 'package:provider_mvvm/screen/count_screen.dart';
import 'package:provider_mvvm/screen/example_one.dart';
import 'package:provider_mvvm/screen/favorite/favorite_screen.dart';
import 'package:provider_mvvm/screen/notify_listener/value_notify_listener.dart';
import 'package:provider_mvvm/screen/themes/dark_theme.dart';
import 'package:provider_mvvm/stateful_widget_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
          ChangeNotifierProvider(create: (_) => FavoriteItemProvider()),
          ChangeNotifierProvider(create: (_) => ThemeChanger()),
          ChangeNotifierProvider(create: (_) => AuthProvider()),

        ],
      child: Builder(
        builder: (BuildContext context){
          final themeChanger = Provider.of<ThemeChanger>(context);

        return MaterialApp(
          title: 'Flutter Demo',
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.red,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.yellow,
            primaryColor: Colors.purple,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.teal,
            ),

            iconTheme: IconThemeData(
              color: Colors.pink
            ),
          ),
          debugShowCheckedModeBanner: false,
          home:  LoginScreen(),
        );
      },),
    );
  }
}

