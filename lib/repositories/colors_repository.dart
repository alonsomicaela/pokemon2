import 'package:flutter/material.dart';
import 'package:pokemon2/model/pokemon.dart';

class ColorsRepository {
  static final Map<String, Color> allPokemonsColors = {
    "Charmander": Colors.orangeAccent.shade100,
    "Charmeleon": Colors.orangeAccent.shade400,
    "Charizard": Colors.orangeAccent.shade700,
    "Chikorita": Colors.green.shade100,
    "Bayleef": Colors.green.shade400,
    "Meganium": Colors.green.shade700,
    "Squirtle": Colors.indigo.shade100,
    "Wartortle": Colors.indigo.shade400,
    "Blastoise": Colors.indigo.shade700,
    "Mew": Colors.purple.shade100,
    "Meowth": Colors.amber.shade100,
    "Persian": Colors.amber.shade400,
    "Oddish": Colors.blueGrey.shade100,
    "Gloom": Colors.blueGrey.shade400,
    "Vileplume": Colors.blueGrey.shade700,
    "Poliwag": Colors.blue.shade100,
    "Poliwhirl": Colors.blue.shade400,
    "Poliwrath": Colors.blue.shade700,
    "Cyndaquil": Colors.orange.shade100,
    "Quilava": Colors.orange.shade400,
    "Typhlosion": Colors.orange.shade700,
    "Cubone": Colors.brown.shade100,
    "Marowak": Colors.brown.shade400,
    "Shellder": Colors.pink.shade100,
    "Cloyster": Colors.pink.shade200,
  };

  static final Map<String, Color> allPokemonsShinyColors = {
    "Charmander": Colors.orange.shade900,
    "Charmeleon": Colors.orange.shade900,
    "Charizard": Colors.orange.shade900,
    "Chikorita": Colors.green.shade900,
    "Bayleef": Colors.green.shade900,
    "Meganium": Colors.green.shade900,
    "Squirtle": Colors.indigo.shade900,
    "Wartortle": Colors.indigo.shade900,
    "Blastoise": Colors.indigo.shade900,
    "Mew": Colors.purple.shade900,
    "Meowth": Colors.amber.shade900,
    "Persian": Colors.amber.shade900,
    "Oddish": Colors.blueGrey.shade900,
    "Gloom": Colors.blueGrey.shade900,
    "Vileplume": Colors.blueGrey.shade900,
    "Poliwag": Colors.blue.shade900,
    "Poliwhirl": Colors.blue.shade900,
    "Poliwrath": Colors.blue.shade900,
    "Cyndaquil": Colors.orange.shade900,
    "Quilava": Colors.orange.shade900,
    "Typhlosion": Colors.orange.shade900,
    "Cubone": Colors.brown.shade900,
    "Marowak": Colors.brown.shade900,
    "Shellder": Colors.pink.shade900,
    "Cloyster": Colors.pink.shade900,
  };

  static getColorForPokemon(Pokemon pokemon) {
    return allPokemonsColors[pokemon.name];
  }

  static getShinyColorFor(Pokemon pokemon) {
    return allPokemonsShinyColors[pokemon.name];
  }

}