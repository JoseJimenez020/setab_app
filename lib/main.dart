import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setab_app/blocs/theme.dart';
import 'package:setab_app/screens/home.dart';

void main() => runApp(Aplication());

class Aplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) => ThemeChanger(ThemeData(
            primaryColor: Colors.red,
            primarySwatch: Colors.red,
            brightness: Brightness.light,
            floatingActionButtonTheme:
                FloatingActionButtonThemeData(backgroundColor: Colors.black))),
        child: MaterialAppWithTheme());
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Setab',
      theme: theme.getTheme(),
      home: home(),
    );
  }
}
