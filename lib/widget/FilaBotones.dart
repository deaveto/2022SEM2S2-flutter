import 'package:calculadora/models/boton.models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget filaBoton(List<modeloBoton> lista) {
  List<Widget> listabotones = [];
  lista.forEach((element) {
    listabotones.add(ElevatedButton(
        onPressed: element.metodo, child: Text(element.titulos)));
  });

  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: listabotones); // espacio entre filass Diego hola a todos
}
