import 'dart:math';

import 'package:calculadora/models/boton.models.dart';
import 'package:calculadora/widget/FilaBotones.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String Resultado = "";
  String Operaciones = "";
  List<String> rehistorico = ['.', '.', '.', '.', '.', '.', '.'];
  List<String> historico = ['.', '.', '.', '.', '.', '.', '.'];
  bool permanencia = false;
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
              color: Color.fromARGB(255, 43, 42, 42),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        rehistorico[6],
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        rehistorico[5],
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        rehistorico[4],
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        rehistorico[3],
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        rehistorico[2],
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        rehistorico[1],
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        rehistorico[0],
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              color: Color.fromARGB(255, 89, 90, 89),
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
              color: Color.fromARGB(255, 43, 42, 42),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.spaceAround, //espacio entre columnas
                children: [
                  filaBoton([
                    modeloBoton(
                        titulos: "%",
                        metodo: () {
                          setState(() {
                            permanencia = true;
                            String temp = Resultado;
                            Resultado = "$Resultado/100";
                            Parser p = new Parser();
                            ContextModel cm = new ContextModel();
                            Expression exp = p.parse(Resultado);
                            Resultado = exp
                                .evaluate(EvaluationType.REAL, cm)
                                .toString();
                            historico.add("$temp % = $Resultado");
                            rehistorico = new List.from(historico.reversed);
                          });
                        }),
                    modeloBoton(
                        titulos: "CE",
                        metodo: () {
                          setState(() {
                            Resultado = "";
                            historico = ['.', '.', '.', '.', '.', '.', '.'];
                            rehistorico = new List.from(historico.reversed);
                          });
                        }),
                    modeloBoton(
                        titulos: "C",
                        metodo: () {
                          setState(() {
                            Resultado = "";
                            Operaciones = "0";
                          });
                        }),
                    modeloBoton(
                      titulos: "<\u184b",
                      metodo: () {
                        setState(() {
                          Resultado =
                              Resultado.substring(0, Resultado.length - 1);
                        });
                      },
                    ),
                  ]),
                  filaBoton([
                    modeloBoton(
                        titulos: "1/x",
                        metodo: () {
                          setState(() {
                            permanencia = true;
                            Resultado = "1/$Resultado";
                          });
                        }),
                    modeloBoton(
                        titulos: "x²",
                        metodo: () {
                          setState(() {
                            permanencia = true;
                            Resultado += "^2";
                          });
                        }),
                    modeloBoton(
                        titulos: "√",
                        metodo: () {
                          setState(() {
                            permanencia = true;
                            String res = Resultado;
                            Resultado = sqrt(num.parse(Resultado)).toString();
                            historico.add("√($res) = $Resultado");
                            rehistorico = new List.from(historico.reversed);
                          });
                        }),
                    modeloBoton(
                        titulos: "/",
                        metodo: () {
                          setState(() {
                            permanencia = false;
                            Resultado += "/";
                          });
                        }),
                  ]),
                  filaBoton([
                    modeloBoton(
                        titulos: "7",
                        metodo: () {
                          setState(() {
                            if (permanencia == true) {
                              Resultado = "";
                              permanencia = false;
                            }
                            Resultado += "7";
                          });
                        }),
                    modeloBoton(
                        titulos: "8",
                        metodo: () {
                          setState(() {
                            if (permanencia == true) {
                              Resultado = "";
                              permanencia = false;
                            }
                            Resultado += "8";
                          });
                        }),
                    modeloBoton(
                        titulos: "9",
                        metodo: () {
                          setState(() {
                            if (permanencia == true) {
                              Resultado = "";
                              permanencia = false;
                            }
                            Resultado += "9";
                          });
                        }),
                    modeloBoton(
                        titulos: "X",
                        metodo: () {
                          setState(() {
                            permanencia = false;
                            Resultado += "*";
                          });
                        }),
                  ]),
                  filaBoton([
                    modeloBoton(
                        titulos: "4",
                        metodo: () {
                          setState(() {
                            if (permanencia == true) {
                              Resultado = "";
                              permanencia = false;
                            }
                            Resultado += "4";
                          });
                        }),
                    modeloBoton(
                        titulos: "5",
                        metodo: () {
                          setState(() {
                            if (permanencia == true) {
                              Resultado = "";
                              permanencia = false;
                            }
                            Resultado += "5";
                          });
                        }),
                    modeloBoton(
                        titulos: "6",
                        metodo: () {
                          setState(() {
                            if (permanencia == true) {
                              Resultado = "";
                              permanencia = false;
                            }
                            Resultado += "6";
                          });
                        }),
                    modeloBoton(
                        titulos: "-",
                        metodo: () {
                          setState(() {
                            permanencia = false;
                            Resultado += "-";
                          });
                        }),
                  ]),
                  filaBoton([
                    modeloBoton(
                        titulos: "1",
                        metodo: () {
                          setState(() {
                            if (permanencia == true) {
                              Resultado = "";
                              permanencia = false;
                            }
                            Resultado += "1";
                          });
                        }),
                    modeloBoton(
                        titulos: "2",
                        metodo: () {
                          setState(() {
                            if (permanencia == true) {
                              Resultado = "";
                              permanencia = false;
                            }
                            Resultado += "2";
                          });
                        }),
                    modeloBoton(
                        titulos: "3",
                        metodo: () {
                          setState(() {
                            if (permanencia == true) {
                              Resultado = "";
                              permanencia = false;
                            }
                            Resultado += "3";
                          });
                        }),
                    modeloBoton(
                        titulos: "+",
                        metodo: () {
                          setState(() {
                            permanencia = false;
                            Resultado += "+";
                          });
                        }),
                  ]),
                  filaBoton([
                    modeloBoton(
                        titulos: "+/-",
                        metodo: () {
                          setState(() {
                            permanencia = false;
                            Resultado = ("$Resultado*-1");
                            Parser p = new Parser();
                            ContextModel cm = new ContextModel();
                            Expression exp = p.parse(Resultado);
                            Resultado = exp
                                .evaluate(EvaluationType.REAL, cm)
                                .toString();

                            historico.add(Resultado);
                            rehistorico = new List.from(historico.reversed);
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
                            String temp = Resultado;

                            Parser p = new Parser();
                            ContextModel cm = new ContextModel();
                            Expression exp = p.parse(Resultado);
                            Resultado = exp
                                .evaluate(EvaluationType.REAL, cm)
                                .toString();
                            historico.add("$temp = $Resultado");
                            rehistorico = new List.from(historico.reversed);
                          });
                          permanencia = true;
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
