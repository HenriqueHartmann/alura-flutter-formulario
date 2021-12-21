import 'package:flutter/material.dart';

import 'models/produto.dart';

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
          body: SingleChildScrollView(
            reverse: true,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextField(
                      controller: _controladorNome,
                      decoration: const InputDecoration()),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextField(
                    controller: _controladorQuantidade,
                    decoration: const InputDecoration(),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextField(
                    controller: _controladorValor,
                    decoration: const InputDecoration(),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: ElevatedButton(
                            child: const Text('Reset'),
                            onPressed: () {
                              _controladorNome.clear();
                              _controladorQuantidade.clear();
                              _controladorValor.clear();
                            }),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: ElevatedButton(
                            child: const Text('Cadastrar'),
                            onPressed: () {
                              final String nome = _controladorNome.text;
                              final int? quantidade =
                                  int.tryParse(_controladorQuantidade.text);
                              final double? valor =
                                  double.tryParse(_controladorValor.text);

                              if (quantidade != null && valor != null) {
                                final Produto produtoNovo =
                                    Produto(nome, quantidade, valor);
                                print(produtoNovo);
                              }
                            }),
                      ),
                    )
                  ],
                )
              ]),
            ),
          )),
    );
  }
}
