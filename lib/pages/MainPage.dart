import 'package:flutter/material.dart';
import 'package:maquetado/pages/componets/Header.dart';
import 'package:maquetado/pages/componets/profile_lista.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      body: Container(
        color: Color(0xff3361F4),
        child: Column(
          children: [
            Header(),
            SizedBox(height: 20),
            Header(),
            ProfileLista(),
          ],
        ),
      ),
    );
  }
}
