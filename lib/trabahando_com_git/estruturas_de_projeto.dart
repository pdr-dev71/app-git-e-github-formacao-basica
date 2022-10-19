import 'package:flutter/material.dart';

class EstruturasDeProjeto extends StatelessWidget {
  const EstruturasDeProjeto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estrutura de um projeto de github'),
      ),
      body: Column(
        children: const [
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('readme.md'),
              subtitle: Text('Arquivo que contém informações sobre o projeto'),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('constributions.md'),
              subtitle:
                  Text('Arquivo que contém informações sobre contribuições'),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('.gitignore'),
              subtitle: Text(
                  'Arquivo que contém informações sobre arquivos a serem ignorados'),
            ),
          ),
        ],
      ),
    );
  }
}
