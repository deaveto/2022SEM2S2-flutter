import 'package:calculadora/models/boton.models.dart';
import 'package:calculadora/widget/FilaBotones.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculdora"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              color: Colors.grey,
              child: Row(
                children: [
                  Text("Operaciones"),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.green,
              child: Row(
                children: [
                  Text("Resultados"),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              //height: 100,
              color: Colors.grey,
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.spaceAround, //espacio entre columnas
                children: [
                  filaBoton([
                    modeloBoton(
                        titulos: "%",
                        metodo: () {
                          print("Porcentaje");
                        }),
                    modeloBoton(
                        titulos: "CE",
                        metodo: () {
                          print("CE");
                        }),
                    modeloBoton(
                        titulos: "C",
                        metodo: () {
                          print("C");
                        }),
                    modeloBoton(
                        titulos: "<-",
                        metodo: () {
                          print("<-");
                        }),
                  ]),
                  filaBoton([
                    modeloBoton(
                        titulos: "7",
                        metodo: () {
                          print("7");
                        }),
                    modeloBoton(
                        titulos: "8",
                        metodo: () {
                          print("8");
                        }),
                    modeloBoton(
                        titulos: "9",
                        metodo: () {
                          print("9");
                        }),
                    modeloBoton(
                        titulos: "X",
                        metodo: () {
                          print("POR");
                        }),
                  ]),
                  filaBoton([
                    modeloBoton(
                        titulos: "4",
                        metodo: () {
                          print("4");
                        }),
                    modeloBoton(
                        titulos: "5",
                        metodo: () {
                          print("5");
                        }),
                    modeloBoton(
                        titulos: "6",
                        metodo: () {
                          print("6");
                        }),
                    modeloBoton(
                        titulos: "-",
                        metodo: () {
                          print("menos.");
                        }),
                  ]),
                  filaBoton([
                    modeloBoton(
                        titulos: "1",
                        metodo: () {
                          print("uno");
                        }),
                    modeloBoton(
                        titulos: "2",
                        metodo: () {
                          print("dos");
                        }),
                    modeloBoton(
                        titulos: "3",
                        metodo: () {
                          print("tres");
                        }),
                    modeloBoton(
                        titulos: "+",
                        metodo: () {
                          print("mas");
                        }),
                  ]),
                  filaBoton([
                    modeloBoton(
                        titulos: "+/-",
                        metodo: () {
                          print("mas o menos");
                        }),
                    modeloBoton(
                        titulos: "'0",
                        metodo: () {
                          print("0");
                        }),
                    modeloBoton(
                        titulos: ".",
                        metodo: () {
                          print("punto");
                        }),
                    modeloBoton(
                        titulos: "=",
                        metodo: () {
                          print("igual");
                        }),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
