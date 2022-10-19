import 'package:flutter/material.dart';

class Logs extends StatelessWidget {
  const Logs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lidando com logs'),
      ),
      body: Column(
        children: const [
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git checkout hashdocommit'),
              subtitle: Text(
                  'Acessa o commit permitindo mexer no codigo sem problemas'),
            ),
          ),
        ],
      ),
    );
  }
}
