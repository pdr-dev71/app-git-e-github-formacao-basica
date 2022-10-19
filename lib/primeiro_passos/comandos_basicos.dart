import 'package:flutter/material.dart';

class ComandosBasicos extends StatelessWidget {
  const ComandosBasicos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Comandos basicos'),
      ),
      body: Column(
        children: const [
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git init'),
              subtitle: Text('Inicia um repositório local'),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('ls -la'),
              subtitle: Text('Mostra os arquivos ocultos'),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git add .'),
              subtitle: Text('Adiciona todos os arquivos'),
            ),
          ),
        ],
      ),
    );
  }
}
