import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

class JokenpoPage extends StatefulWidget {
  @override
  _JokenpoPageState createState() => _JokenpoPageState();
}

//random
class _JokenpoPageState extends State<JokenpoPage> {
  String imagePapel = 'assets/images/papel.png';
  String imageTesoura = 'assets/images/tesoura.png';
  String imagePedra = 'assets/images/pedra.png';
  String resultado = 'sem resultado';
  String computador = '';

  void onPedra() {
    var r = Random();
    int numero = r.nextInt(2);

    if (numero == 0) {
      resultado = 'empate com a pedra';
      computador = 'pedra';
    } else if (numero == 1) {
      resultado = 'perdeu para o papel';
      computador = 'papel';
    } else {
      resultado = 'Ganhou da tesoura';
      computador = 'tesoura';
    }

    setState(() {
      this.resultado = resultado;
      this.computador = computador;
    });
  }

  void onPapel() {
    var r = Random();
    int numero = r.nextInt(2);

    if (numero == 0) {
      resultado = 'Ganhou da pedra';
      computador = 'pedra';
    } else if (numero == 1) {
      resultado = 'Empate com o papel';
      computador = 'papel';
    } else {
      resultado = 'Perdeu da tesoura';
      computador = 'tesoura';
    }

    setState(() {
      this.resultado = resultado;
      this.computador = computador;
    });
  }

  void onTesoura() {
    var r = Random();
    int numero = r.nextInt(2);

    if (numero == 0) {
      resultado = 'Perdeu para a pedra';
      computador = 'pedra';
    } else if (numero == 1) {
      resultado = 'Ganhou do papel';
      computador = 'papel';
    } else {
      resultado = 'Empate com a tesoura';
      computador = 'tesoura';
    }

    setState(() {
      this.resultado = resultado;
      this.computador = computador;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'JOKENPÔ DA MILLENY S2',
          ),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                  flex: 7, // 1/3
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Escolha uma das opções abaixo:'),
                          Container(
                              margin: EdgeInsets.all(10.0),
                              width: double.infinity,
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                child: Text('Pedra'),
                                color: Colors.purple,
                                onPressed: onPedra,
                              )),
                          Container(
                              margin: EdgeInsets.all(10.0),
                              width: double.infinity,
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                child: Text('Papel'),
                                color: Colors.purple,
                                onPressed: onPapel,
                              )),
                          Container(
                              margin: EdgeInsets.all(10.0),
                              width: double.infinity,
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                child: Text('Tesoura'),
                                color: Colors.purple,
                                onPressed: onTesoura,
                              )),
                          Text('Computador Escolheu:'),
                          Container(
                              child: Text(this.computador),
                              margin: EdgeInsets.all(8.0)),
                          Container(
                            child: Image.asset('assets/images/appbar.png',
                                fit: BoxFit.fill),
                            margin: EdgeInsets.all(30),
                            width: 300,
                            height: 100,
                          ),
                          Text('Resultado:'),
                          Container(
                            child: Text(this.resultado),
                            margin: EdgeInsets.all(20),
                          ),
                        ]),
                  ))
            ]));
  }
}
