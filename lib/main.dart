import 'package:flutter/material.dart';
import 'package:git_e_github_formacao_basica/home.dart';
import 'package:git_e_github_formacao_basica/primeiro_passos/branches.dart';
import 'package:git_e_github_formacao_basica/primeiro_passos/comandos_basicos.dart';
import 'package:git_e_github_formacao_basica/primeiro_passos/delete.dart';
import 'package:git_e_github_formacao_basica/primeiro_passos/home.dart';
import 'package:git_e_github_formacao_basica/primeiro_passos/logs.dart';
import 'package:git_e_github_formacao_basica/primeiro_passos/staging.dart';
import 'package:git_e_github_formacao_basica/trabahando_com_git/clone_branch.dart';
import 'package:git_e_github_formacao_basica/trabahando_com_git/clone_repo.dart';
import 'package:git_e_github_formacao_basica/trabahando_com_git/estruturas_de_projeto.dart';
import 'package:git_e_github_formacao_basica/trabahando_com_git/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/Modulo1': (context) => const PrimeirosPassosGit(),
        '/Modulo2': (context) => const HomeGit(),
        '/ComandosBasicos': (context) => const ComandosBasicos(),
        '/Staging': (context) => const Staging(),
        '/Delete': (context) => const Delete(),
        '/Logs': (context) => const Logs(),
        '/Branches': (context) => const Branches(),
        '/Estruturas': (context) => const EstruturasDeProjeto(),
        '/Repositorio': (context) => const CloneRepo(),
        '/CloneBranch': (context) => const CloneBranch(),
      },
    );
  }
}
