import 'package:flutter/material.dart';

class asistencia extends StatefulWidget {
  const asistencia({Key? key}) : super(key: key);

  @override
  State<asistencia> createState() => _asistenciaState();
}

class _asistenciaState extends State<asistencia> {
  bool vari = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (_) => new AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                topRight: Radius.circular(50))),
                        backgroundColor: Colors.white,
                        title: Text(vari ? "Quieres Tocar" : "Deja de Tocar",
                            style: TextStyle(
                                fontFamily: 'monse',
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        content: Text(vari ? "Toca" : "Suelta",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontFamily: 'monse',
                                fontWeight: FontWeight.bold)),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                color: Colors.black,
                                child: Text(
                                  "No",
                                  style: TextStyle(
                                      fontFamily: 'monse',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                vari = !vari;
                              });
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                  right: 13, top: 10, bottom: 10, left: 13),
                              color: Colors.black,
                              child: Text(
                                "Si",
                                style: TextStyle(
                                    fontFamily: 'monse',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ));
            },
            highlightColor: Color.fromARGB(255, 7, 48, 255),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            color: Colors.red,
            child: Text(vari ? "Tocame" : "Tocando",
                style: TextStyle(
                    fontFamily: 'monse',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white)),
          ),
          Text(vari ? "No estas Tocandome" : "Me estas Tocando")
        ],
      ),
    ));
  }
}
