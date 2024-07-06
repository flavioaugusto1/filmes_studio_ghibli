import 'package:flutter/material.dart';

class CardFilme extends StatelessWidget {
  final nome;
  final image;

  const CardFilme({
    required this.nome,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(image),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.blueGrey,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                )
              ]),
        )),
        const SizedBox(height: 8),
        Text(
          nome,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
