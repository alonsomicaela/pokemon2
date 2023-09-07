import 'package:flutter/material.dart';
import 'package:pokemon2/model/pokemon.dart';

class NoEvolutionDialog extends StatelessWidget {
  const NoEvolutionDialog({super.key, required this.pokemon});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Oops!', style: TextStyle(color: Theme.of(context).colorScheme.primary),),
      content: Text(
        '${pokemon.name} no tiene una evolución. Prueba con otro Pokemon',
        style: TextStyle(color: Theme.of(context).colorScheme.primary),
      ),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    );
  }
}