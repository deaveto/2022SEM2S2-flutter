import 'package:calculadora/models/boton.models.dart';
import 'package:calculadora/widget/FilaBotones.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String Resultado = "";
  String Operaciones = "";
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
              height: 50,
              color: Colors.grey,
              child: Row(
                children: [
                  Text(
                    Operaciones,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
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
                  Text(
                    Resultado,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
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
                          setState(() {
                            Resultado += "%";
                          });
                        }),
                    modeloBoton(
                        titulos: "CE",
                        metodo: () {
                          print("CE");
                        }),
                    modeloBoton(
                        titulos: "C",
                        metodo: () {
                          setState(() {
                            Resultado = "0";
                            Operaciones = "0";
                          });
                        }),
                    modeloBoton(
                        titulos: "<-",
                        metodo: () {
                          print("<-");
                        }),
                  ]),
                  filaBoton([
                    modeloBoton(
                        titulos: "1/x",
                        metodo: () {
                          print("fraccion");
                        }),
                    modeloBoton(
                        titulos: "x²",
                        metodo: () {
                          print("exponente");
                        }),
                    modeloBoton(
                        titulos: "√",
                        metodo: () {
                          setState(() {
                            Resultado += "√";
                          });
                        }),
                    modeloBoton(
                        titulos: "/",
                        metodo: () {
                          setState(() {
                            Resultado += "/";
                          });
                        }),
                  ]),
                  filaBoton([
                    modeloBoton(
                        titulos: "7",
                        metodo: () {
                          setState(() {
                            Resultado += "7";
                          });
                        }),
                    modeloBoton(
                        titulos: "8",
                        metodo: () {
                          setState(() {
                            Resultado += "8";
                          });
                        }),
                    modeloBoton(
                        titulos: "9",
                        metodo: () {
                          setState(() {
                            Resultado += "9";
                          });
                        }),
                    modeloBoton(
                        titulos: "X",
                        metodo: () {
                          setState(() {
                            Resultado += "X";
                          });
                        }),
                  ]),
                  filaBoton([
                    modeloBoton(
                        titulos: "4",
                        metodo: () {
                          setState(() {
                            Resultado += "4";
                          });
                        }),
                    modeloBoton(
                        titulos: "5",
                        metodo: () {
                          setState(() {
                            Resultado += "5";
                          });
                        }),
                    modeloBoton(
                        titulos: "6",
                        metodo: () {
                          setState(() {
                            Resultado += "6";
                          });
                        }),
                    modeloBoton(
                        titulos: "-",
                        metodo: () {
                          setState(() {
                            Resultado += "-";
                          });
                        }),
                  ]),
                  filaBoton([
                    modeloBoton(
                        titulos: "1",
                        metodo: () {
                          setState(() {
                            Resultado += "1";
                          });
                        }),
                    modeloBoton(
                        titulos: "2",
                        metodo: () {
                          setState(() {
                            Resultado += "2";
                          });
                        }),
                    modeloBoton(
                        titulos: "3",
                        metodo: () {
                          setState(() {
                            Resultado += "3";
                          });
                        }),
                    modeloBoton(
                        titulos: "+",
                        metodo: () {
                          setState(() {
                            Resultado += "+";
                          });
                        }),
                  ]),
                  filaBoton([
                    modeloBoton(
                        titulos: "+/-",
                        metodo: () {
                          setState(() {
                            Resultado += "+/-";
                          });
                        }),
                    modeloBoton(
                        titulos: "0",
                        metodo: () {
                          setState(() {
                            Resultado += "0";
                          });
                        }),
                    modeloBoton(
                        titulos: ".",
                        metodo: () {
                          setState(() {
                            Resultado += ".";
                          });
                        }),
                    modeloBoton(
                        titulos: "=",
                        metodo: () {
                          setState(() {
                            Operaciones += "$Resultado|";
                            Operaciones = Operaciones.replaceAll("|", "\n");
                            Resultado = "";
                          });
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
