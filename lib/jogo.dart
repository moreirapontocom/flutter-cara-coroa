import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {

  String opcaoEscolhida;

  // Constructor
  Jogo(this.opcaoEscolhida);

  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xff61bd86),
      // color: Color.fromRGBO(140,182,143,1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset("images/moeda_" + widget.opcaoEscolhida + ".png"),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: GestureDetector(
              child: Image.asset("images/botao_voltar.png"),
              onTap: () => Navigator.pop(context),
            ),
          )
        ],
      ),
    );
  }
}