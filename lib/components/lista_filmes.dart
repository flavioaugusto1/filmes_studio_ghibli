import 'package:filmes_studio_ghibli/components/card_filme.dart';
import 'package:filmes_studio_ghibli/models/filme.dart';
import 'package:flutter/material.dart';

class ListaFilmes extends StatelessWidget {
  final List<Filme> filmes;

  const ListaFilmes({required this.filmes, super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 10,
        childAspectRatio: 3 / 4,
      ),
      itemCount: filmes.length,
      itemBuilder: (context, index) {
        final filme = filmes[index];
        return CardFilme(nome: filme.nome, image: filme.image);
      },
    );
  }
}
