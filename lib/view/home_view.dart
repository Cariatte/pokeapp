import 'package:flutter/material.dart';
import 'package:pokemon_app/model/geracoes_model.dart';
import 'package:pokemon_app/view_model/geracoes_view_model.dart';
import 'package:pokemon_app/view_model/regioes_view_model.dart';

import '../model/regioes_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Results> allGenerations = [];
  List<MainRegion> pokemonRegion = [];

  @override
  void initState() {
    geracoesList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                const SizedBox(
                  height: 20,
                ),
                FutureBuilder<List<Results>>(
                  future: geracoesList(),
                  builder: ((context, snapshot) {
                    if (snapshot.hasError) {
                      return const Center(
                        child: Text(
                          'ERRO AO CARREGA API',
                          style: TextStyle(color: Colors.red),
                        ),
                      );
                    } else if (snapshot.hasData) {
                      return Container(
                        height: 530,
                        width: double.infinity,
                        margin: const EdgeInsets.all(1),
                        decoration: BoxDecoration(border: Border.all(width: 1)),
                        child: ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            return FutureBuilder<MainRegion>(
                              future: regioesList(id: index + 1),
                              builder: (context, snapshot) {
                                if (snapshot.hasError) {
                                  return const Center(
                                    child: Text(
                                      'ERRO AO CARREGA API',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  );
                                } else if (snapshot.hasData) {
                                  return Container(
                                    margin: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 1)),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/regiao');
                                      },
                                      child: ListTile(
                                        title: Center(
                                          child: Text(
                                            '${snapshot.data!.name[0].toUpperCase()}${snapshot.data!.name.substring(1).toLowerCase()}',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                } else {
                                  return const Center(
                                      child: CircularProgressIndicator(
                                    strokeWidth: 5,
                                  ));
                                }
                              },
                            );
                          },
                        ),
                      );
                    } else {
                      return const CircularProgressIndicator();
                    }
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<List<Results>> geracoesList() async {
    final data = await GeracoesViewModel().geracoes();

    allGenerations.clear();

    data.results.forEach((element) {
      allGenerations.add(element);
    });

    return allGenerations;
  }

  Future<MainRegion> regioesList({required int id}) async {
    final data = await RegioesViewModel().regioes(id: id);

    return data.mainRegion;
  }
}

/*
Container(
                              margin: const EdgeInsets.all(4),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 1)),
                              child: InkWell(
                                onTap: () {},
                                child: ListTile(
                                  title: Center(
                                    child: Text(
                                      snapshot.data![index].name,
                                      style: const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            );


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
