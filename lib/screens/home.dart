import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setab_app/blocs/theme.dart';
import 'package:setab_app/screens/screen1.dart';
import 'package:setab_app/screens/screen2.dart';
import 'package:setab_app/screens/screen3.dart';
import 'package:setab_app/screens/screen4.dart';
import 'package:setab_app/screens/screen5.dart';
import 'package:setab_app/screens/screen6.dart';
import 'package:setab_app/screens/screen7.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int selectDrawerItem = 0;
  int titulo = 0;

  bool vari2 = false;
  bool _light = false;

  getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return noticias();
      case 1:
        return asistencia();
      case 2:
        return avisos();
      case 3:
        return calificaciones();
      case 4:
        return calendario();
      case 5:
        return acerca_de();
      case 6:
        return cerrar_sesion();
    }
  }

  onSelectItem(int pos) {
    Navigator.of(context).pop();
    setState(() {
      selectDrawerItem = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 163, 30, 20),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        title: Container(
          width: double.infinity,
          child: Text(
            selectDrawerItem == 0
                ? "Noticias"
                : selectDrawerItem == 1
                    ? "Asistencias"
                    : selectDrawerItem == 2
                        ? "Mis Avisos"
                        : selectDrawerItem == 3
                            ? "Calificaciones"
                            : selectDrawerItem == 4
                                ? "Calendario"
                                : selectDrawerItem == 5
                                    ? "Acerca De"
                                    : "Cerrar Sesión ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 19,
              fontFamily: 'monse',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: theme.getTheme() ==
                  ThemeData(
                      primaryColor: Colors.red,
                      primarySwatch: Colors.red,
                      brightness: Brightness.light,
                      floatingActionButtonTheme: FloatingActionButtonThemeData(
                          backgroundColor: Colors.black))
              ? Color.fromARGB(0, 255, 193, 7)
              : Color.fromARGB(255, 39, 38, 38),
          child: ListView(
            children: <Widget>[
              Container(
                height: 180,
                child: Container(
                    padding: EdgeInsets.only(top: 10),
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 154, 28, 18)),
                    child: Column(
                      children: [
                        Image.asset("assets/yo.png", width: 100, height: 100),
                        Text(
                          "Antonio Fuentes",
                          style: TextStyle(
                              fontFamily: 'monse',
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "antoniofuentesjara@gmail.com",
                          style: TextStyle(
                              fontFamily: 'monse',
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ],
                    )),
              ),
              Container(
                margin: new EdgeInsets.only(bottom: 2),
                color: Color.fromARGB(20, 0, 0, 0),
                child: ListTile(
                  selected: (0 == selectDrawerItem),
                  title: Text(
                    'Noticias',
                    style: TextStyle(
                        fontFamily: 'monse',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.newspaper,
                    size: 30,
                  ),
                  onTap: () {
                    onSelectItem(0);
                  },
                ),
              ),
              Container(
                margin: new EdgeInsets.only(bottom: 2),
                color: Color.fromARGB(20, 0, 0, 0),
                child: ListTile(
                  selected: (1 == selectDrawerItem),
                  title: Text(
                    'Asistencias',
                    style: TextStyle(
                        fontFamily: 'monse',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.person, size: 30),
                  onTap: () {
                    onSelectItem(1);
                  },
                ),
              ),
              Container(
                margin: new EdgeInsets.only(bottom: 2),
                color: Color.fromARGB(20, 0, 0, 0),
                child: ListTile(
                  selected: (2 == selectDrawerItem),
                  title: Text(
                    'Mis Avisos',
                    style: TextStyle(
                        fontFamily: 'monse',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.notifications_active, size: 30),
                  onTap: () {
                    onSelectItem(2);
                  },
                ),
              ),
              Container(
                margin: new EdgeInsets.only(bottom: 2),
                color: Color.fromARGB(20, 0, 0, 0),
                child: ListTile(
                  selected: (3 == selectDrawerItem),
                  title: Text(
                    'Calificaciones',
                    style: TextStyle(
                        fontFamily: 'monse',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.document_scanner, size: 30),
                  onTap: () {
                    onSelectItem(3);
                  },
                ),
              ),
              Container(
                margin: new EdgeInsets.only(bottom: 2),
                color: Color.fromARGB(20, 0, 0, 0),
                child: ListTile(
                  selected: (4 == selectDrawerItem),
                  title: Text(
                    'Calendario',
                    style: TextStyle(
                        fontFamily: 'monse',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.calendar_month,
                    size: 30,
                  ),
                  onTap: () {
                    onSelectItem(4);
                  },
                ),
              ),
              Container(
                color: theme.getTheme() ==
                        ThemeData(
                            primaryColor: Colors.red,
                            primarySwatch: Colors.red,
                            brightness: Brightness.light,
                            floatingActionButtonTheme:
                                FloatingActionButtonThemeData(
                                    backgroundColor: Colors.black))
                    ? Color.fromARGB(255, 163, 30, 20)
                    : Color.fromARGB(255, 189, 30, 19),
                margin: new EdgeInsets.only(bottom: 2),
                padding: EdgeInsets.only(left: 16, top: 10, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.settings,
                      color: theme.getTheme() ==
                              ThemeData(
                                  primaryColor: Colors.red,
                                  primarySwatch: Colors.red,
                                  brightness: Brightness.light,
                                  floatingActionButtonTheme:
                                      FloatingActionButtonThemeData(
                                          backgroundColor: Colors.black))
                          ? Colors.white
                          : Colors.white,
                      size: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 21),
                      child: Text(
                        "Configuraciones",
                        style: TextStyle(
                            fontFamily: 'monse',
                            fontSize: 20,
                            color: theme.getTheme() ==
                                    ThemeData(
                                        primaryColor: Colors.red,
                                        primarySwatch: Colors.red,
                                        brightness: Brightness.light,
                                        floatingActionButtonTheme:
                                            FloatingActionButtonThemeData(
                                                backgroundColor: Colors.black))
                                ? Colors.white
                                : Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: new EdgeInsets.only(bottom: 2),
                color: Color.fromARGB(20, 0, 0, 0),
                padding: EdgeInsets.only(left: 15, top: 2, bottom: 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.mode_night,
                      color: theme.getTheme() ==
                              ThemeData(
                                  primaryColor: Colors.red,
                                  primarySwatch: Colors.red,
                                  brightness: Brightness.light,
                                  floatingActionButtonTheme:
                                      FloatingActionButtonThemeData(
                                          backgroundColor: Colors.black))
                          ? Color.fromARGB(255, 143, 143, 143)
                          : Colors.white,
                      size: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Modo Oscuro",
                        style: TextStyle(
                            fontFamily: 'monse',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Switch(
                          activeColor: Colors.red,
                          value: _light,
                          onChanged: (state) {
                            setState(() {
                              _light = state;
                              if (_light == true) {
                                theme.setTheme(ThemeData(
                                    primaryColor: Colors.red,
                                    primarySwatch: Colors.red,
                                    brightness: Brightness.dark,
                                    floatingActionButtonTheme:
                                        FloatingActionButtonThemeData(
                                            backgroundColor: Colors.black)));
                              } else {
                                theme.setTheme(ThemeData(
                                    primaryColor: Colors.red,
                                    primarySwatch: Colors.red,
                                    brightness: Brightness.light,
                                    floatingActionButtonTheme:
                                        FloatingActionButtonThemeData(
                                            backgroundColor: Colors.black)));
                              }
                            });
                          }),
                    )
                  ],
                ),
              ),
              Container(
                margin: new EdgeInsets.only(bottom: 2),
                color: Color.fromARGB(20, 0, 0, 0),
                child: ListTile(
                  selected: (5 == selectDrawerItem),
                  title: Text(
                    'Setab App',
                    style: TextStyle(
                        fontFamily: 'monse',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.info, size: 30),
                  onTap: () {
                    onSelectItem(5);
                  },
                ),
              ),
              Container(
                margin: new EdgeInsets.only(bottom: 2),
                color: Color.fromARGB(20, 0, 0, 0),
                child: ListTile(
                  selected: (6 == selectDrawerItem),
                  title: Text(
                    'Cerrar Sesión',
                    style: TextStyle(
                        fontFamily: 'monse',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.close, size: 30),
                  onTap: () {
                    onSelectItem(6);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      //SI pagina actual es 0 ENTONCES imprime esto SINO entonces Esto
      body: getDrawerItemWidget(selectDrawerItem),
    );
  }
}
