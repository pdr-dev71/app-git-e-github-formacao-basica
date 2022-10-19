import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeGit extends StatelessWidget {
  const HomeGit({Key? key}) : super(key: key);

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
            color: Colors.white,
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
                      child: Text('O que é github?'),
                    ),
                  ),
                  Flexible(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () async =>
                              await _openUrl('https://github.com/'),
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
            color: Colors.white,
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
                      child: Text('Estruturas de projeto'),
                    ),
                  ),
                  Flexible(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () =>
                              Navigator.pushNamed(context, '/Estruturas'),
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
            color: Colors.white,
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
                      child: Text('Clone de um repositorio'),
                    ),
                  ),
                  Flexible(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () =>
                              Navigator.pushNamed(context, '/Repositorio'),
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
            color: Colors.white,
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
                      child: Text('Clone branch individual'),
                    ),
                  ),
                  Flexible(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () =>
                              Navigator.pushNamed(context, '/CloneBranch'),
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
