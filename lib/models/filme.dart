class Filme {
  String nome;
  String image;

  Filme({
    required this.nome,
    required this.image,
  });

  Filme.fromJson(Map<String, dynamic> json)
      : nome = json['nome'].toString(),
        image = json['imagem'].toString();
}
