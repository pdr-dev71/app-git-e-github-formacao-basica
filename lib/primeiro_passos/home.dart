import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PrimeirosPassosGit extends StatelessWidget {
  const PrimeirosPassosGit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future _openUrl(String url) async {
      var urllaunchable = await canLaunchUrl(Uri.parse(url));
      print(url);
      if (urllaunchable) {
        await launchUrl(
          Uri.parse(url),
          mode: LaunchMode.externalApplication,
        );
      } else {
        print("URL can't be launched.");
      }
    }

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text(''),
      ),
      body: GridView.count(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        children: [
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  const Flexible(
                    flex: 2,
                    child: SizedBox(
                      child: Text('O que é git?'),
                    ),
                  ),
                  Flexible(
                    flex: 6,
                    child: Container(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () async =>
                                await _openUrl('https://gitfichas.com/'),
                            child: const Text(
                              'Git fichas',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  const Flexible(
                    flex: 2,
                    child: SizedBox(
                      child: Text('Instalação do git'),
                    ),
                  ),
                  Flexible(
                    flex: 6,
                    child: Container(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () async => await _openUrl(
                                'https://git-scm.com/download/win'),
                            child: const Text(
                              'Windows',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async => await _openUrl(
                                'https://git-scm.com/download/linux'),
                            child: const Text(
                              'Linux',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async => await _openUrl(
                                'https://git-scm.com/download/mac'),
                            child: const Text(
                              'Mac Os',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Column(
                children: <Widget>[
                  const Flexible(
                    flex: 2,
                    child: SizedBox(
                      child: Text('Comandos básicos'),
                    ),
                  ),
                  Flexible(
                    flex: 6,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () => Navigator.pushNamed(
                                context, '/ComandosBasicos'),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.blue,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Column(
                children: [
                  const Flexible(
                    flex: 2,
                    child: SizedBox(
                      child: Text('Delete arquivos'),
                    ),
                  ),
                  Flexible(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pushNamed(context, '/Delete'),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Column(
                children: [
                  const Flexible(
                    flex: 2,
                    child: SizedBox(
                      child: Text('Staging'),
                    ),
                  ),
                  Flexible(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pushNamed(context, '/Staging'),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Column(
                children: [
                  const Flexible(
                    flex: 2,
                    child: SizedBox(
                      child: Text('Logs'),
                    ),
                  ),
                  Flexible(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pushNamed(context, '/Logs'),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Column(
                children: [
                  const Flexible(
                    flex: 2,
                    child: SizedBox(
                      child: Text('Branches'),
                    ),
                  ),
                  Flexible(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () =>
                              Navigator.pushNamed(context, '/Branches'),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
