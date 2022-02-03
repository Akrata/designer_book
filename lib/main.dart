import 'package:flutter/material.dart';
import 'tarjeta.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final gap = SizedBox(
      height: 1,
      child: DecoratedBox(
        decoration: BoxDecoration(color: Colors.grey[300]),
      ),
    );

    return MaterialApp(
      title: 'Designers Book',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Center(
        child: Scaffold(
          appBar: AppBar(
            title: Text("DESIGNERS"),
            centerTitle: true,
          ),
          body: ListView(
            padding: EdgeInsets.only(left: 10, right: 10),
            children: [
              Tarjeta("Nombre Persona", "Experience : 04 years",
                  "assets/img/people.jpg"),
              gap,
              Tarjeta("Nombre Persona", "Experience : 04 years",
                  "assets/img/people.jpg"),
              gap,
              Tarjeta("Nombre Persona", "Experience : 04 years",
                  "assets/img/people.jpg"),
              gap,
              Tarjeta("Nombre Persona", "Experience : 04 years",
                  "assets/img/people.jpg"),
              gap,
              Tarjeta("Nombre Persona", "Experience : 04 years",
                  "assets/img/people.jpg"),
              gap
            ],
          ),
        ),
      ),
    );
  }
}
