import 'package:flutter/material.dart';

class CloneRepo extends StatelessWidget {
  const CloneRepo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clonando um repositório'),
      ),
      body: Column(
        children: const [
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git clone  "linkdorepositorio"'),
              subtitle:
                  Text('Clona o repositório para o diretorio de trabalho'),
            ),
          ),
        ],
      ),
    );
  }
}
