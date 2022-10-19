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
        children: [
          const Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git init'),
              subtitle: Text('Inicia um repositório local'),
            ),
          ),
          const Card(
            color: Colors.white,
            child: ListTile(
              title: Text('ls -la'),
              subtitle: Text('Mostra os arquivos ocultos'),
            ),
          ),
          Card(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ListTile(
                  title: Text('git add .'),
                  subtitle: Text('Adiciona todos os arquivos'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Text('Variações:'),
                      Text('git add --all'),
                      Text('git add -A'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git status'),
              subtitle: Text('Informa o status do repositório'),
            ),
          ),
          const Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git commit -m "Mensagem"'),
              subtitle: Text(
                  'Comita os arquivos, a flag -m é para adicionar uma mensagem'),
            ),
          ),
          const Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git log'),
              subtitle: Text(
                  'Mostra o histórico de commits, a flag --oneline mostra de forma resumida'),
            ),
          ),
          const Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git config --global user.name "Seu nome"'),
              subtitle: Text('Configura o nome do usuário'),
            ),
          ),
          const Card(
            color: Colors.white,
            child: ListTile(
              title: Text('git config --global user.email "Seu email"'),
              subtitle: Text('Configura o email do usuário'),
            ),
          ),
        ],
      ),
    );
  }
}
