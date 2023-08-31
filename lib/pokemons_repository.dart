import 'package:flutter/material.dart';
import 'package:pokemon2/pokemon.dart';

class PokemonRepository {
  static List<Pokemon> top10Pokemons() {
    return [
      Pokemon(
        "Charmander",
        Colors.orangeAccent.shade100,
        Pokemon ("Charmeleon", Colors.orangeAccent.shade400, null),
      ),
      Pokemon(
        "Chikorita",
        Colors.green.shade100,
        Pokemon ("Bayleef", Colors.green.shade400, null),
      ),
      Pokemon(
        "Squirtle",
        Colors.indigo.shade100,
        Pokemon ("Wartortle", Colors.indigo.shade400, null),
      ),
      Pokemon(
        "Mew",
        Colors.purple.shade100,
        null,
      ),
      Pokemon(
        "Meowth",
        Colors.amber.shade100,
        Pokemon ("Persian", Colors.amber.shade400, null),
      ),
      Pokemon(
        "Oddish",
        Colors.blueGrey.shade100,
        Pokemon ("Gloom", Colors.blueGrey.shade400, null),
      ),
      Pokemon(
        "Poliwag",
        Colors.blue.shade100,
        Pokemon ("Poliwhirl", Colors.blue.shade400, null),
      ),
      Pokemon(
        "Cyndaquil",
        Colors.orange.shade100,
        Pokemon ("Quilava", Colors.orange.shade400, null),
      ),
      Pokemon(
        "Cubone",
        Colors.brown.shade100,
        Pokemon ("Marowak", Colors.brown.shade400, null),
      ),
      Pokemon(
        "Shellder",
        Colors.pink.shade100,
        Pokemon ("Cloyster", Colors.pink.shade200, null),
      ),
    ];
  }
}
