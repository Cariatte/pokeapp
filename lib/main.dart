import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pokemon_app/view/home_view.dart';
import 'package:pokemon_app/view/login_view.dart';
import 'package:pokemon_app/widgets/custom_material_color.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon App',
      routes: {
        "/home": (context) => const Home(),
      },
      home: MainPage(),
      theme: ThemeData(
        primarySwatch: CustomColor.materialPreto,
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting){
          return Center(child: CircularProgressIndicator(),);
        } else if (snapshot.hasData) {
          return Home();
        } else {
          return Login();
        }
      },
    );
  }
}
