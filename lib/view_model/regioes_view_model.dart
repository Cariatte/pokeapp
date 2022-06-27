import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/regioes_model.dart';

class RegioesViewModel {

  Future<RegioesModel> regioes({required int id}) async{
    String url = "https://pokeapi.co/api/v2/generation/$id/";
    final response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
      return RegioesModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Erro');
    }
  }

}
