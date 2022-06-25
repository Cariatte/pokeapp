import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Theme(
      data: ThemeData(
        scaffoldBackgroundColor: Color(0xFF787878),
      ),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 28, 8, 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Escolha a geração do seu pokemon!!!',
                      style: TextStyle(color: Colors.white, fontSize: 32),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () => FirebaseAuth.instance.signOut(),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xFF),
                      ),
                      child: Center(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(Icons.arrow_back, color: Colors.white,),
                              ),
                              TextSpan(
                                text: '   Deslogar',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
 */