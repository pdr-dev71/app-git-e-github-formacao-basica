import 'package:flutter/material.dart';

class Branches extends StatelessWidget {
  const Branches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trabalhando com branches'),
      ),
      body: Column(
        children: const [
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git branch nomedabranch'),
              subtitle: Text('Cria uma nova branch a partir da branch atual'),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git merge nomedabranchquedesejamergear'),
              subtitle: Text('Mergia a branch atual com a branch desejada'),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git branch -m nomeatual novonome'),
              subtitle: Text('Renomeia a branch'),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git branch -D nomedabranch'),
              subtitle: Text('Deleta a branch'),
            ),
          ),
        ],
      ),
    );
  }
}
