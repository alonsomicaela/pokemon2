import 'package:flutter/material.dart';

class Pokemon {
  final String name;
  final Color color;
  final Pokemon? evolution;

  const Pokemon(this.name, this.color, this.evolution);

  bool hasEvolution(){
    return evolution != null;
  }
}