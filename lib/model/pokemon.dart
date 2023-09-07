import 'package:flutter/material.dart';

class Pokemon {
  final String name;
  final Pokemon? evolution;

  const Pokemon(this.name, this.evolution);

  bool hasEvolution(){
    return evolution != null;
  }
}