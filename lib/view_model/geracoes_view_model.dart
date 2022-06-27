import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pokemon_app/model/geracoes_model.dart';

class GeracoesViewModel {

  Future<GeracoesModel> geracoes() async{
    String url = "https://pokeapi.co/api/v2/generation";
    final response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
      return GeracoesModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Erro');
    }
  }

}
