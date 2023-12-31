import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text(texto),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
