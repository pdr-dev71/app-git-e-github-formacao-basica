import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWith = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Modulos'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/Modulo1');
                        },
                        child: SizedBox(
                          width: screenWith * .9,
                          height: screenHeight * .3,
                          child: Column(
                            children: [
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                elevation: 5,
                                margin: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20)),
                                        image: DecorationImage(
                                            image: Image.asset(
                                                    'assets/images/modulo1.png')
                                                .image,
                                            fit: BoxFit.cover),
                                      ),
                                      width: screenWith * .9,
                                      height: screenHeight * .2,
                                    ),
                                    Container(
                                      color: Colors.white,
                                      width: screenWith,
                                      height: screenHeight * .0584,
                                      child: const Center(
                                        child: Text(
                                          'Primeiros passos com git',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/Modulo2');
                        },
                        child: SizedBox(
                          width: screenWith * .9,
                          height: screenHeight * .3,
                          child: Column(
                            children: [
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                elevation: 5,
                                margin: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20)),
                                        image: DecorationImage(
                                            image: Image.asset(
                                                    'assets/images/modulo2.jpg')
                                                .image,
                                            fit: BoxFit.cover),
                                      ),
                                      width: screenWith * .9,
                                      height: screenHeight * .2,
                                    ),
                                    Container(
                                      color: Colors.white,
                                      width: screenWith,
                                      height: screenHeight * .0584,
                                      child: const Center(
                                        child: Text(
                                          'Trabalhando com github',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
