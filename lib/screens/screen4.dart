import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setab_app/blocs/theme.dart';
import 'package:setab_app/screens/home.dart';
import 'package:setab_app/screens/screen1.dart';

class calificaciones extends StatefulWidget {
  const calificaciones({Key? key}) : super(key: key);

  @override
  State<calificaciones> createState() => _calificacionesState();
}

class _calificacionesState extends State<calificaciones> {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView(children: [
        Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: Text(
            "Alumnos Inscritos",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'monse', fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
            decoration: BoxDecoration(
                color: theme.getTheme() ==
                        ThemeData(
                            primaryColor: Colors.red,
                            primarySwatch: Colors.red,
                            brightness: Brightness.light,
                            floatingActionButtonTheme:
                                FloatingActionButtonThemeData(
                                    backgroundColor: Colors.black))
                    ? Color.fromARGB(255, 227, 226, 226)
                    : Color.fromARGB(255, 48, 48, 48),
                boxShadow: [
                  BoxShadow(
                    color: theme.getTheme() ==
                            ThemeData(
                                primaryColor: Colors.red,
                                primarySwatch: Colors.red,
                                brightness: Brightness.light,
                                floatingActionButtonTheme:
                                    FloatingActionButtonThemeData(
                                        backgroundColor: Colors.black))
                        ? Color.fromARGB(197, 0, 0, 0)
                        : Color.fromARGB(197, 0, 0, 0),
                    offset: Offset(2, 2),
                    blurRadius: 15.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      width: 290,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(400),
                              bottomLeft: Radius.circular(50),
                              topLeft: Radius.circular(50))),
                      child: Row(
                        children: [
                          Image.asset('assets/yo.png', width: 60, height: 60),
                          Column(
                            children: [
                              Container(
                                  padding: EdgeInsets.only(left: 10),
                                  width: 210,
                                  child: Text("Antonio Fuentes Jara",
                                      style: TextStyle(
                                          fontFamily: 'monse',
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  padding: EdgeInsets.only(left: 10),
                                  width: 210,
                                  child: Text(
                                    "5 Grado Grupo A",
                                    style: TextStyle(
                                        fontFamily: 'monse',
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Container(
                                  padding: EdgeInsets.only(left: 10),
                                  width: 210,
                                  child: Text("Secundaria",
                                      style: TextStyle(
                                          fontFamily: 'monse',
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))),
                            ],
                          )
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 40,
                      child: IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return Container(
                                    height: 750,
                                    child: Scaffold(
                                      appBar: AppBar(
                                          backgroundColor:
                                              Color.fromARGB(255, 163, 30, 20),
                                          title: Container(
                                              width: 220,
                                              child: Text(
                                                "Boletas",
                                                textAlign: TextAlign.center,
                                              ))),
                                      body: Container(
                                        color: theme.getTheme() ==
                                                ThemeData(
                                                    primaryColor: Colors.red,
                                                    primarySwatch: Colors.red,
                                                    brightness:
                                                        Brightness.light,
                                                    floatingActionButtonTheme:
                                                        FloatingActionButtonThemeData(
                                                            backgroundColor:
                                                                Colors.black))
                                            ? Color.fromARGB(0, 255, 193, 7)
                                            : Color.fromARGB(255, 39, 38, 38),
                                        child: ListView(
                                          children: [
                                            Container(
                                              height: 180,
                                              child: Container(
                                                  padding:
                                                      EdgeInsets.only(top: 10),
                                                  decoration: BoxDecoration(
                                                      color: Color.fromARGB(
                                                          255, 154, 28, 18)),
                                                  child: Column(
                                                    children: [
                                                      Image.asset(
                                                          "assets/yo.png",
                                                          width: 100,
                                                          height: 100),
                                                      Text(
                                                        "Antonio Fuentes Jara",
                                                        style: TextStyle(
                                                            fontFamily: 'monse',
                                                            fontSize: 19,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      Text(
                                                        "Secundaria",
                                                        style: TextStyle(
                                                            fontFamily: 'monse',
                                                            fontSize: 14,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      Text(
                                                        "5 Grado Grupo A",
                                                        style: TextStyle(
                                                            fontFamily: 'monse',
                                                            fontSize: 14,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ],
                                                  )),
                                            ),
                                            Container(
                                              margin: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: theme.getTheme() ==
                                                          ThemeData(
                                                              primaryColor:
                                                                  Colors.red,
                                                              primarySwatch:
                                                                  Colors.red,
                                                              brightness:
                                                                  Brightness
                                                                      .light,
                                                              floatingActionButtonTheme:
                                                                  FloatingActionButtonThemeData(
                                                                      backgroundColor:
                                                                          Colors
                                                                              .black))
                                                      ? Color.fromARGB(
                                                          255, 227, 226, 226)
                                                      : Color.fromARGB(
                                                          255, 48, 48, 48),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Text(
                                                "Grado 1",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontFamily: 'monse',
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: theme.getTheme() ==
                                                          ThemeData(
                                                              primaryColor:
                                                                  Colors.red,
                                                              primarySwatch:
                                                                  Colors.red,
                                                              brightness:
                                                                  Brightness
                                                                      .light,
                                                              floatingActionButtonTheme:
                                                                  FloatingActionButtonThemeData(
                                                                      backgroundColor:
                                                                          Colors
                                                                              .black))
                                                      ? Color.fromARGB(
                                                          255, 227, 226, 226)
                                                      : Color.fromARGB(
                                                          255, 48, 48, 48),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Table(
                                                columnWidths: {
                                                  0: FractionColumnWidth(0.4),
                                                  1: FractionColumnWidth(0.1),
                                                  2: FractionColumnWidth(0.1),
                                                  3: FractionColumnWidth(0.1),
                                                  4: FractionColumnWidth(0.1),
                                                  5: FractionColumnWidth(0.1),
                                                },
                                                border: TableBorder.all(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                children: [
                                                  BuildRow([
                                                    'Asignatura',
                                                    'P1',
                                                    'P2',
                                                    'P3',
                                                    'P4',
                                                    'CF'
                                                  ], isHeader: true),
                                                  BuildRow([
                                                    'Matematicas',
                                                    '10',
                                                    '9',
                                                    '10',
                                                    '10',
                                                    '9'
                                                  ]),
                                                  BuildRow([
                                                    'Español',
                                                    '10',
                                                    '9',
                                                    '10',
                                                    '10',
                                                    '9'
                                                  ]),
                                                  BuildRow([
                                                    'Ciencias Naturales',
                                                    '10',
                                                    '10',
                                                    '8',
                                                    '10',
                                                    '9'
                                                  ]),
                                                  BuildRow([
                                                    'Ética',
                                                    '10',
                                                    '8',
                                                    '8',
                                                    '10',
                                                    '9'
                                                  ]),
                                                  BuildRow([
                                                    'Ingles',
                                                    '10',
                                                    '10',
                                                    '8',
                                                    '10',
                                                    '9'
                                                  ]),
                                                  BuildRow([
                                                    'Educación Física',
                                                    '10',
                                                    '9',
                                                    '10',
                                                    '10',
                                                    '9'
                                                  ]),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: theme.getTheme() ==
                                                          ThemeData(
                                                              primaryColor:
                                                                  Colors.red,
                                                              primarySwatch:
                                                                  Colors.red,
                                                              brightness:
                                                                  Brightness
                                                                      .light,
                                                              floatingActionButtonTheme:
                                                                  FloatingActionButtonThemeData(
                                                                      backgroundColor:
                                                                          Colors
                                                                              .black))
                                                      ? Color.fromARGB(
                                                          255, 227, 226, 226)
                                                      : Color.fromARGB(
                                                          255, 48, 48, 48),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Text(
                                                "Grado 2",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontFamily: 'monse',
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: theme.getTheme() ==
                                                          ThemeData(
                                                              primaryColor:
                                                                  Colors.red,
                                                              primarySwatch:
                                                                  Colors.red,
                                                              brightness:
                                                                  Brightness
                                                                      .light,
                                                              floatingActionButtonTheme:
                                                                  FloatingActionButtonThemeData(
                                                                      backgroundColor:
                                                                          Colors
                                                                              .black))
                                                      ? Color.fromARGB(
                                                          255, 227, 226, 226)
                                                      : Color.fromARGB(
                                                          255, 48, 48, 48),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Table(
                                                columnWidths: {
                                                  0: FractionColumnWidth(0.4),
                                                  1: FractionColumnWidth(0.1),
                                                  2: FractionColumnWidth(0.1),
                                                  3: FractionColumnWidth(0.1),
                                                  4: FractionColumnWidth(0.1),
                                                  5: FractionColumnWidth(0.1),
                                                },
                                                border: TableBorder.all(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                children: [
                                                  BuildRow([
                                                    'Asignatura',
                                                    'P1',
                                                    'P2',
                                                    'P3',
                                                    'P4',
                                                    'CF'
                                                  ], isHeader: true),
                                                  BuildRow([
                                                    'Matematicas 2',
                                                    '10',
                                                    '9',
                                                    '10',
                                                    '10',
                                                    '9'
                                                  ]),
                                                  BuildRow([
                                                    'Español 2',
                                                    '10',
                                                    '9',
                                                    '10',
                                                    '10',
                                                    '9'
                                                  ]),
                                                  BuildRow([
                                                    'Informática',
                                                    '10',
                                                    '10',
                                                    '8',
                                                    '10',
                                                    '9'
                                                  ]),
                                                  BuildRow([
                                                    'Ética 2',
                                                    '10',
                                                    '8',
                                                    '8',
                                                    '10',
                                                    '9'
                                                  ]),
                                                  BuildRow([
                                                    'Ingles 2',
                                                    '10',
                                                    '10',
                                                    '8',
                                                    '10',
                                                    '9'
                                                  ]),
                                                  BuildRow([
                                                    'Educación Física 2',
                                                    '10',
                                                    '9',
                                                    '10',
                                                    '10',
                                                    '9'
                                                  ]),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.all(20),
                                              height: 50,
                                              child: RaisedButton(
                                                color: Colors.red,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                30))),
                                                onPressed: (() {
                                                  //Navigator.pop(context);
                                                }),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.download,
                                                      size: 25,
                                                    ),
                                                    Text(
                                                      "Descargar Boleta",
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: 'monse',
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          icon: Icon(
                            Icons.search,
                            size: 35,
                          )))
                ],
              ),
            )),
      ]),
    );
  }

  TableRow BuildRow(List<String> cells, {bool isHeader = false}) => TableRow(
          children: cells.map((cell) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
              child: Text(
            cell,
            style: TextStyle(
                fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
                fontSize: isHeader ? 14 : 13),
          )),
        );
      }).toList());
}
