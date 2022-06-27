class RegioesModel {
  RegioesModel({
    required this.abilities,
    required this.id,
    required this.mainRegion,
    required this.moves,
    required this.name,
    required this.names,
    required this.pokemonSpecies,
    required this.types,
    required this.versionGroups,
  });
  late final List<Abilities> abilities;
  late final int id;
  late final MainRegion mainRegion;
  late final List<Moves> moves;
  late final String name;
  late final List<Names> names;
  late final List<PokemonSpecies> pokemonSpecies;
  late final List<Types> types;
  late final List<VersionGroups> versionGroups;

  RegioesModel.fromJson(Map<String, dynamic> json){
    abilities = List.from(json['abilities']).map((e)=>Abilities.fromJson(e)).toList();
    id = json['id'];
    mainRegion = MainRegion.fromJson(json['main_region']);
    moves = List.from(json['moves']).map((e)=>Moves.fromJson(e)).toList();
    name = json['name'];
    names = List.from(json['names']).map((e)=>Names.fromJson(e)).toList();
    pokemonSpecies = List.from(json['pokemon_species']).map((e)=>PokemonSpecies.fromJson(e)).toList();
    types = List.from(json['types']).map((e)=>Types.fromJson(e)).toList();
    versionGroups = List.from(json['version_groups']).map((e)=>VersionGroups.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['abilities'] = abilities.map((e)=>e.toJson()).toList();
    _data['id'] = id;
    _data['main_region'] = mainRegion.toJson();
    _data['moves'] = moves.map((e)=>e.toJson()).toList();
    _data['name'] = name;
    _data['names'] = names.map((e)=>e.toJson()).toList();
    _data['pokemon_species'] = pokemonSpecies.map((e)=>e.toJson()).toList();
    _data['types'] = types.map((e)=>e.toJson()).toList();
    _data['version_groups'] = versionGroups.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Abilities {
  Abilities({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Abilities.fromJson(Map<String, dynamic> json){
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

class MainRegion {
  MainRegion({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  MainRegion.fromJson(Map<String, dynamic> json){
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

class Moves {
  Moves({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Moves.fromJson(Map<String, dynamic> json){
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

class Names {
  Names({
    required this.language,
    required this.name,
  });
  late final Language language;
  late final String name;

  Names.fromJson(Map<String, dynamic> json){
    language = Language.fromJson(json['language']);
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['language'] = language.toJson();
    _data['name'] = name;
    return _data;
  }
}

class Language {
  Language({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Language.fromJson(Map<String, dynamic> json){
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

class PokemonSpecies {
  PokemonSpecies({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  PokemonSpecies.fromJson(Map<String, dynamic> json){
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

class Types {
  Types({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Types.fromJson(Map<String, dynamic> json){
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

class VersionGroups {
  VersionGroups({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  VersionGroups.fromJson(Map<String, dynamic> json){
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