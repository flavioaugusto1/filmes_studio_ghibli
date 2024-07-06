import 'dart:convert';

import 'package:filmes_studio_ghibli/models/filme.dart';
import 'package:http/http.dart' as http;

Future<List<Filme>> getFilme() async {
  final response = await http.get(Uri.parse(
      'https://raw.githubusercontent.com/alura-cursos/obtendo_dados_com_flutter_http/main/filmes.json'));

  final json = jsonDecode(response.body);

  return List<Filme>.from(json.map((elemento) {
    return Filme.fromJson(elemento);
  }));
}
