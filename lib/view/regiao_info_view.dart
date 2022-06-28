import 'package:flutter/material.dart';

class RegiaoInfoView extends StatelessWidget {
  const RegiaoInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final modalRoute = ModalRoute.of(context)!.settings.arguments as Map;
    String regiao = modalRoute["regiao"].toString();

    return Theme(
      data: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF787878),
      ),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 28, 8, 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    '$regiao Infos',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: [
                      Container(
                        color: Colors.red,
                        height: 100,
                        width: 100,
                      ),
                      Container(
                        color: Colors.blue,
                        height: 100,
                        width: 100,
                      ),
                      Container(
                        color: Colors.black,
                        height: 100,
                        width: 100,
                      ),
                      Container(
                        color: Colors.yellow,
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
