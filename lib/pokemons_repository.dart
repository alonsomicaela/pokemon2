import 'package:flutter/material.dart';
import 'package:pokemon2/pokemon.dart';

class PokemonRepository {
  static List<Pokemon> top10Pokemons() {
    return [
      Pokemon(
        "Charmander",
        Colors.orangeAccent.shade100,
      ),
      Pokemon(
        "Chikorita",
        Colors.green.shade100,
      ),
      Pokemon(
        "Squirtle",
        Colors.indigo.shade100,
      ),
      Pokemon(
        "Mew",
        Colors.purple.shade100,
      ),
      Pokemon(
        "Meowth",
        Colors.amber.shade100,
      ),
      Pokemon(
        "Oddish",
        Colors.blueGrey.shade100,
      ),
      Pokemon(
        "Poliwag",
        Colors.blue.shade100,
      ),
      Pokemon(
        "Cyndaquil",
        Colors.orange.shade100,
      ),
      Pokemon(
        "Cubone",
        Colors.brown.shade100,
      ),
      Pokemon(
        "Shellder",
        Colors.pink.shade100,
      ),
    ];
  }
}
