import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setab_app/blocs/theme.dart';

class avisos extends StatefulWidget {
  const avisos({Key? key}) : super(key: key);

  @override
  State<avisos> createState() => _avisosState();
}

class _avisosState extends State<avisos> {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return Container(
        child: Center(
      child: Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/hola2.png',
                ),
                fit: BoxFit.cover),
          ),
          child: Container(
            alignment: Alignment(.8, .9),
            child: Container(
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
                                  brightness: Brightness.light,
                                  floatingActionButtonTheme:
                                      FloatingActionButtonThemeData(
                                          backgroundColor: Colors.black))
                          ? Colors.black
                          : Colors.white,
                      width: 1.5)),
              child: RaisedButton(
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
                                    Color.fromARGB(255, 163, 30, 20),
                                title: Container(
                                    width: 220,
                                    child: Text(
                                      "Detalles",
                                      textAlign: TextAlign.center,
                                    ))),
                            body: ListView(
                              children: [
                                Container(
                                    padding: EdgeInsets.all(10),
                                    child: Image.asset('assets/hola2.png')),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: Text(
                                        "Inicia clases 100% presenciales la Universidad Tecnol??gica de Tabasco",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'monse',
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: Text(
                                        "\nCon la finalidad de tener colaboraci??n en materia acad??mica y uso de instalaciones para capacitaci??n de profesionistas y estudiantes, as?? como recepcionar alumnos de estad??a a trav??s de los diversos espacios, firmaron Convenio General de Colaboraci??n la Universidad Tecnol??gica de Tabasco y el Instituto de Protecci??n Civil del Estado de Tabasco en el Aula ANFECA de esta Instituci??n de Educaci??n Superior, el 11 de mayo de 2022.\n\n Sign?? el Convenio por parte de la UTTAB el Dr. Lenin Mart??nez P??rez, Rector de esta Casa de Estudios, quien dijo sentirse complacido de poder unir esfuerzos con el IPCET, un organismo con el que se trabajar?? de manera coordinada en varios momentos y que permitir?? a los estudiantes poder realizar sus pr??cticas y estad??as.\n\n Estuvieron presentes por parte del IPCET, el Lic. Oscar Alejandro Jim??nez Ramos, Encargado del Despacho de la Unidad de Apoyo Jur??dico y de la UTTAB, el Dr. Ricardo Amado Moheno Barrueta, Secretario de Vinculaci??n y el Dr. Jorge Rebollo Meza, Secretario Acad??mico.\n\n",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontFamily: 'monse', fontSize: 18),
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
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
              ),
            ),
          )),
    ));
  }
}
