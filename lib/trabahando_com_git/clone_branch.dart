import 'package:flutter/material.dart';

class CloneBranch extends StatelessWidget {
  const CloneBranch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clone um branch individual'),
      ),
      body: Column(
        children: const [
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git branch -a'),
              subtitle: Text('Lista todos os branches'),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git checkout -b nomedabranch origin/branchremoto'),
              subtitle: Text('Clona o branch remoto cria uma branch local'),
            ),
          ),
        ],
      ),
    );
  }
}
