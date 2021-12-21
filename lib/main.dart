import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorQuantidade = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cadastrando produto'),
        ),
        body: Column(
          children: <Widget>[
            TextField(controller: _controladorNome),
            TextField(controller: _controladorQuantidade),
            TextField(controller: _controladorValor),
            ElevatedButton(
                child: const Text('Cadastrar'),
                onPressed: () {
                  final String nome = _controladorNome.text;
                  final int? quantidade = int.tryParse(_controladorQuantidade.text);
                  final double? valor = double.tryParse(_controladorValor.text);
                }
            )
          ]
        )
      ),
    );
  }
}
