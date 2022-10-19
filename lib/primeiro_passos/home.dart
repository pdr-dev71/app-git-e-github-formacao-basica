import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PrimeirosPassosGit extends StatelessWidget {
  const PrimeirosPassosGit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWith = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: Container(
                    child: const Text('O que é git?'),
                  ),
                ),
                Flexible(
                  flex: 6,
                  child: Container(
                    color: Colors.yellow,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () async => await _openUrl(
                              'https://git-scm.com/download/mac'),
                          child: const Text(
                            'Mac os',
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
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: [
                const Text('O que é git'),
                InkWell(
                  onTap: () async => await _openUrl('https://gitfichas.com/'),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 14.0),
                    child: Text(
                      'Git fichas',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: screenWith * .4,
            height: 100,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      child: const Text('Instalação do git'),
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: Container(
                      color: Colors.grey,
                      child: InkWell(
                        onTap: () async =>
                            await _openUrl('https://git-scm.com/download/win'),
                        child: const Text(
                          'Windows',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                      color: Colors.grey,
                      child: InkWell(
                        onTap: () =>
                            _openUrl('https://git-scm.com/download/linux'),
                        child: const Text(
                          'Linux',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                      color: Colors.grey,
                      child: InkWell(
                        onTap: () async =>
                            await _openUrl('https://git-scm.com/download/mac'),
                        child: const Text(
                          'Mac os',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/ComandosBasicos'),
            child: SizedBox(
              width: screenWith * .4,
              height: 100,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: const [
                    Text('Comandos básicos'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: screenWith * .4,
            height: 100,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  const Text('Staging'),
                  InkWell(
                    onTap: () async => await _openUrl('https://gitfichas.com/'),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 14.0),
                      child: Text(
                        'Git fichas',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.yellow,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () async => await _openUrl(
                              'https://git-scm.com/download/mac'),
                          child: const Text(
                            'Mac os',
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
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
