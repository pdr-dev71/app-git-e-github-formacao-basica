import 'package:flutter/material.dart';

class Staging extends StatelessWidget {
  const Staging({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trabalhando com staging'),
      ),
      body: Column(
        children: const [
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git restore'),
              subtitle: Text('Restaura o arquivo para o estado anterior'),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git reset head "nomedoarquivo"'),
              subtitle: Text('Remove o arquivo do staging'),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git restore --staged "nomedoarquivo"'),
              subtitle: Text('recupera o arquivo'),
            ),
          ),
        ],
      ),
    );
  }
}
