import 'package:flutter/material.dart';
import 'spfc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'SPFC'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  Widget buildSpfcCard(SPFC spfc) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(spfc.urlImage),
          Text(spfc.nome,
              style: TextStyle(
                  fontFamily: 'ClimateCrisis',
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: SPFC.exemplos.length,
          itemBuilder: (BuildContext context, int index) {
            return buildSpfcCard(SPFC.exemplos[index]);
          },
        ),
      ),
    );
  }
}
