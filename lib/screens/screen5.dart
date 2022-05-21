import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setab_app/blocs/theme.dart';

class calendario extends StatelessWidget {
  const calendario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return Container(
      alignment: Alignment(0, 0),
      child: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(10),
            child: Text(
              "Calendario Escolar",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'monse',
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 280,
            width: double.infinity,
            decoration: BoxDecoration(
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
                ],
                image: DecorationImage(
                    image: AssetImage(
                      'assets/calendario.png',
                    ),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(left: 10, right: 10),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: RaisedButton(
              color: Colors.red,
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              onPressed: (() {
                //Navigator.pop(context);
              }),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.download,
                    size: 25,
                  ),
                  Text(
                    "Descargar Calendario",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'monse',
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
