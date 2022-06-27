class GeracoesModel {
  GeracoesModel({
    required this.count,
    required this.results,
  });
  late final int count;
  late final List<Results> results;

  GeracoesModel.fromJson(Map<String, dynamic> json){
    count = json['count'];
    results = List.from(json['results']).map((e)=>Results.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['count'] = count;
    _data['results'] = results.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Results {
  Results({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Results.fromJson(Map<String, dynamic> json){
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}