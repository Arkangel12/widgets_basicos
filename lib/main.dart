import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(primaryColor: Colors.indigo[800]),
      home: MyHomePage(title: 'Widgets Básicos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0.0,
      ),
      body: Container(
//        color: Colors.red, //Si se agrega esta linea se encontrara un error
        decoration: BoxDecoration(color: Colors.pinkAccent[100]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlutterLogo(
                  size: 48.0,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.network(
                  'https://i0.wp.com/cdnh.c3dt.com/icon/3895320-com.sharmadhiraj.awesomeflutter.png',
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.black,
                  size: 48.0,
                ),
                Text(
                  'Texto 3',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32.0,
                  ),
                ),
              ],
            ),
            Image.network(
              'https://i0.wp.com/cdnh.c3dt.com/icon/3895320-com.sharmadhiraj.awesomeflutter.png',
            ),
            Icon(
              Icons.favorite,
              color: Colors.black,
              size: 48.0,
            ),
            Text(
              'Texto 3',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 32.0),
            ),
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              //Tomar todo el tamaño de la pantalla a lo ancho , cambiar a height para tomar todo a alo alto
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 50.0,
                    child: Placeholder(
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    width: 50.0,
                    child: Placeholder(
                      color: Colors.yellow,
                      strokeWidth: 5.0,
                    ),
                  ),
                ],
              ),
            ),
            RaisedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 250.0,
                      child: Center(
                          child: Text(
                        'Hola Mundo!',
                        style: TextStyle(
                          fontSize: 54.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    );
                  },
                );
              },
              child: Text('Presioname'),
            )
          ],
        ),
      ),
    );
  }
}
