import 'package:flutter/material.dart';

class Delete extends StatelessWidget {
  const Delete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deletando arquivos'),
      ),
      body: Column(
        children: const [
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git rm "nomedoarquivo"'),
              subtitle: Text('Remove o arquivo do repositório'),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git checkout "nomedoarquivo"'),
              subtitle: Text('atualiza no diretorio de trabalho'),
            ),
          ),
        ],
      ),
    );
  }
}
