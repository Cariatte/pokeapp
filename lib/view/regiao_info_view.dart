import 'package:flutter/material.dart';

class RegiaoInfoView extends StatelessWidget {
  const RegiaoInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF787878),
      ),
      child: const Scaffold(
        body: Center(
          child: Text(
            'Região Infos',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
