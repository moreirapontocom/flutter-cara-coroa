import 'dart:math';

import 'package:caraoucoroa/jogo.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  List<String> opcoesJogo = ["cara","coroa"];
  String selecaoJogo;

  String logicaJogo() {
    int numeroAleatorio = Random().nextInt(2);
    return selecaoJogo = opcoesJogo[numeroAleatorio];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xff61bd86),
      // color: Color.fromRGBO(140,182,143,1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Image.asset("images/logo.png"),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: GestureDetector(
              child: Image.asset("images/botao_jogar.png"),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Jogo( logicaJogo() )
                )
              ),
            ),
          )

        ],
      ),
    );
  }
}