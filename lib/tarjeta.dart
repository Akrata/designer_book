import 'package:flutter/material.dart';

class Tarjeta extends StatelessWidget {
  String nombre;
  String experiencia;
  String pathImage;

  Tarjeta(this.nombre, this.experiencia, this.pathImage);

  @override
  Widget build(BuildContext context) {
    final userName = Container(
      child: Text(
        nombre,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );

    final userExp = Container(
      child: Text(experiencia,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300)),
    );

    final userData = Column(
      children: [
        userName,
        SizedBox(
          height: 10,
        ),
        userExp
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );

    final photo = Container(
      // margin: EdgeInsets.all(20),
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    final emailIcon = InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.red[800]),
        child: const Icon(
          Icons.email,
          color: Colors.white,
        ),
      ),
    );

    final photoAndUser = Container(
      child: Row(
        children: [
          photo,
          SizedBox(
            width: 30,
          ),
          userData
        ],
      ),
    );

    return Material(
        elevation: 0,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [photoAndUser, emailIcon],
          ),
        ));
  }
}
