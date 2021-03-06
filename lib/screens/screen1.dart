import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setab_app/blocs/theme.dart';
import 'package:setab_app/screens/screen4.dart';

class noticias extends StatefulWidget {
  @override
  State<noticias> createState() => _noticiasState();
}

final emailcontroller = TextEditingController();
final primercontroller = TextEditingController();

class _noticiasState extends State<noticias> {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return Container(
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
          padding: EdgeInsets.only(top: 10),
          children: [
            Expanded(
              child: Container(
                  padding: EdgeInsets.only(top: 7, bottom: 17),
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 15),
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
                      borderRadius: BorderRadius.circular(10),
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
                          offset: Offset(-2, -2),
                          blurRadius: 10.0,
                        ),
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
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 40,
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Mi??rcoles 04 de mayo de 2022",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'monse'),
                                ),
                              ),
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(17),
                                        topRight: Radius.circular(17)),
                                    border: Border.all(
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
                                            ? Colors.black
                                            : Colors.white,
                                        width: 1.5)),
                                child: RaisedButton(
                                  hoverColor: Colors.black,
                                  color: Color.fromARGB(255, 163, 30, 20),
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
                                                      Color.fromARGB(
                                                          255, 163, 30, 20),
                                                  title: Container(
                                                      width: 220,
                                                      child: Text(
                                                        "Detalles",
                                                        textAlign:
                                                            TextAlign.center,
                                                      ))),
                                              body: ListView(
                                                children: [
                                                  Container(
                                                      width: double.infinity,
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      child: Image.asset(
                                                        'assets/hola.png',
                                                        fit: BoxFit.fill,
                                                      )),
                                                  Column(
                                                    children: [
                                                      Container(
                                                        margin:
                                                            EdgeInsets.all(10),
                                                        child: Text(
                                                          "Unen v??nculos la UTTAB y el Instituto de Protecci??n Civil del Estado de Tabasco",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'monse',
                                                              fontSize: 24,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.all(10),
                                                        child: Text(
                                                          "\nCon la finalidad de tener colaboraci??n en materia acad??mica y uso de instalaciones para capacitaci??n de profesionistas y estudiantes, as?? como recepcionar alumnos de estad??a a trav??s de los diversos espacios, firmaron Convenio General de Colaboraci??n la Universidad Tecnol??gica de Tabasco y el Instituto de Protecci??n Civil del Estado de Tabasco en el Aula ANFECA de esta Instituci??n de Educaci??n Superior, el 11 de mayo de 2022.\n\n Sign?? el Convenio por parte de la UTTAB el Dr. Lenin Mart??nez P??rez, Rector de esta Casa de Estudios, quien dijo sentirse complacido de poder unir esfuerzos con el IPCET, un organismo con el que se trabajar?? de manera coordinada en varios momentos y que permitir?? a los estudiantes poder realizar sus pr??cticas y estad??as.\n\n Estuvieron presentes por parte del IPCET, el Lic. Oscar Alejandro Jim??nez Ramos, Encargado del Despacho de la Unidad de Apoyo Jur??dico y de la UTTAB, el Dr. Ricardo Amado Moheno Barrueta, Secretario de Vinculaci??n y el Dr. Jorge Rebollo Meza, Secretario Acad??mico.\n\n",
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'monse',
                                                              fontSize: 18),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  child: Text("Mirar",
                                      style: TextStyle(
                                          fontFamily: 'monse',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15),
                                          topRight: Radius.circular(15))),
                                ),
                              ),
                            ],
                          )),
                      Divider(
                        thickness: 2,
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          width: double.infinity,
                          child: Image.asset(
                            'assets/hola.png',
                            fit: BoxFit.fill,
                          )),
                      Container(
                        child: Container(
                          padding: EdgeInsets.only(left: 10, top: 5, right: 10),
                          child: Text(
                              "Unen v??nculos la UTTAB y el Instituto de Protecci??n Civil del Estado de Tabasco",
                              style: TextStyle(
                                fontFamily: 'monse',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                    ],
                  )),
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.only(top: 7, bottom: 17),
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 15),
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
                      borderRadius: BorderRadius.circular(10),
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
                          offset: Offset(-2, -2),
                          blurRadius: 10.0,
                        ),
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
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 40,
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Mi??rcoles 04 de mayo de 2022",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'monse'),
                                ),
                              ),
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(17),
                                        topRight: Radius.circular(17)),
                                    border: Border.all(
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
                                            ? Colors.black
                                            : Colors.white,
                                        width: 1.5)),
                                child: RaisedButton(
                                  hoverColor: Colors.black,
                                  color: Color.fromARGB(255, 163, 30, 20),
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
                                                      Color.fromARGB(
                                                          255, 163, 30, 20),
                                                  title: Container(
                                                      width: 220,
                                                      child: Text(
                                                        "Detalles",
                                                        textAlign:
                                                            TextAlign.center,
                                                      ))),
                                              body: ListView(
                                                children: [
                                                  Container(
                                                      width: double.infinity,
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      child: Image.asset(
                                                        'assets/hola2.png',
                                                        fit: BoxFit.fill,
                                                      )),
                                                  Column(
                                                    children: [
                                                      Container(
                                                        margin:
                                                            EdgeInsets.all(10),
                                                        child: Text(
                                                          "Inicia clases 100% presenciales la Universidad Tecnol??gica de Tabasco",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'monse',
                                                              fontSize: 24,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.all(10),
                                                        child: Text(
                                                          "\nCon la finalidad de tener colaboraci??n en materia acad??mica y uso de instalaciones para capacitaci??n de profesionistas y estudiantes, as?? como recepcionar alumnos de estad??a a trav??s de los diversos espacios, firmaron Convenio General de Colaboraci??n la Universidad Tecnol??gica de Tabasco y el Instituto de Protecci??n Civil del Estado de Tabasco en el Aula ANFECA de esta Instituci??n de Educaci??n Superior, el 11 de mayo de 2022.\n\n Sign?? el Convenio por parte de la UTTAB el Dr. Lenin Mart??nez P??rez, Rector de esta Casa de Estudios, quien dijo sentirse complacido de poder unir esfuerzos con el IPCET, un organismo con el que se trabajar?? de manera coordinada en varios momentos y que permitir?? a los estudiantes poder realizar sus pr??cticas y estad??as.\n\n Estuvieron presentes por parte del IPCET, el Lic. Oscar Alejandro Jim??nez Ramos, Encargado del Despacho de la Unidad de Apoyo Jur??dico y de la UTTAB, el Dr. Ricardo Amado Moheno Barrueta, Secretario de Vinculaci??n y el Dr. Jorge Rebollo Meza, Secretario Acad??mico.\n\n",
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'monse',
                                                              fontSize: 18),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  child: Text("Mirar",
                                      style: TextStyle(
                                          fontFamily: 'monse',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15),
                                          topRight: Radius.circular(15))),
                                ),
                              ),
                            ],
                          )),
                      Divider(
                        thickness: 2,
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              left: 10, top: 5, right: 10, bottom: 5),
                          width: double.infinity,
                          child: Image.asset(
                            'assets/hola2.png',
                            fit: BoxFit.fill,
                          )),
                      Container(
                        child: Container(
                          padding: EdgeInsets.only(left: 10, top: 5, right: 10),
                          child: Text(
                              "Inicia clases 100% presenciales la Universidad Tecnol??gica de Tabasco",
                              style: TextStyle(
                                fontFamily: 'monse',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                    ],
                  )),
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.only(top: 7, bottom: 17),
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 15),
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
                      borderRadius: BorderRadius.circular(10),
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
                          offset: Offset(-2, -2),
                          blurRadius: 10.0,
                        ),
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
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 40,
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Mi??rcoles 04 de mayo de 2022",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'monse'),
                                ),
                              ),
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(17),
                                        topRight: Radius.circular(17)),
                                    border: Border.all(
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
                                            ? Colors.black
                                            : Colors.white,
                                        width: 1.5)),
                                child: RaisedButton(
                                  hoverColor: Colors.black,
                                  color: Color.fromARGB(255, 163, 30, 20),
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
                                                      Color.fromARGB(
                                                          255, 163, 30, 20),
                                                  title: Container(
                                                      width: 220,
                                                      child: Text(
                                                        "Detalles",
                                                        textAlign:
                                                            TextAlign.center,
                                                      ))),
                                              body: ListView(
                                                children: [
                                                  Container(
                                                      width: double.infinity,
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      child: Image.asset(
                                                          'assets/hola3.png',
                                                          fit: BoxFit.fill)),
                                                  Column(
                                                    children: [
                                                      Container(
                                                        margin:
                                                            EdgeInsets.all(10),
                                                        child: Text(
                                                          "La Conferencia Ganancias primero, administraci??n real para PYMES se llev?? a cabo en la UTTAB",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'monse',
                                                              fontSize: 24,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.all(10),
                                                        child: Text(
                                                          "\nCon la finalidad de tener colaboraci??n en materia acad??mica y uso de instalaciones para capacitaci??n de profesionistas y estudiantes, as?? como recepcionar alumnos de estad??a a trav??s de los diversos espacios, firmaron Convenio General de Colaboraci??n la Universidad Tecnol??gica de Tabasco y el Instituto de Protecci??n Civil del Estado de Tabasco en el Aula ANFECA de esta Instituci??n de Educaci??n Superior, el 11 de mayo de 2022.\n\n Sign?? el Convenio por parte de la UTTAB el Dr. Lenin Mart??nez P??rez, Rector de esta Casa de Estudios, quien dijo sentirse complacido de poder unir esfuerzos con el IPCET, un organismo con el que se trabajar?? de manera coordinada en varios momentos y que permitir?? a los estudiantes poder realizar sus pr??cticas y estad??as.\n\n Estuvieron presentes por parte del IPCET, el Lic. Oscar Alejandro Jim??nez Ramos, Encargado del Despacho de la Unidad de Apoyo Jur??dico y de la UTTAB, el Dr. Ricardo Amado Moheno Barrueta, Secretario de Vinculaci??n y el Dr. Jorge Rebollo Meza, Secretario Acad??mico.\n\n",
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'monse',
                                                              fontSize: 18),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  child: Text("Mirar",
                                      style: TextStyle(
                                          fontFamily: 'monse',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15),
                                          topRight: Radius.circular(15))),
                                ),
                              ),
                            ],
                          )),
                      Divider(
                        thickness: 2,
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              left: 10, top: 5, right: 10, bottom: 5),
                          width: double.infinity,
                          child: Image.asset(
                            'assets/hola3.png',
                            fit: BoxFit.fill,
                          )),
                      Container(
                        child: Container(
                          padding: EdgeInsets.only(left: 10, top: 5, right: 10),
                          child: Text(
                              "La Conferencia Ganancias primero, administraci??n real para PYMES se llev?? a cabo en la UTTAB",
                              style: TextStyle(
                                fontFamily: 'monse',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ));
  }
}
