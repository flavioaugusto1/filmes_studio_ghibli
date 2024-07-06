import 'package:filmes_studio_ghibli/models/filme.dart';
import 'package:filmes_studio_ghibli/repositories/repository.dart';
import 'package:filmes_studio_ghibli/components/lista_filmes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<List<Filme>>? futureFilms;

  @override
  void initState() {
    futureFilms = getFilme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futureFilms,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final filmes = snapshot.data as List<Filme>;
          return ListaFilme(filmes: filmes);
        } else if (snapshot.hasError) {
          return Center(
            child: Text(
              snapshot.error.toString(),
              style: const TextStyle(fontSize: 16),
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
