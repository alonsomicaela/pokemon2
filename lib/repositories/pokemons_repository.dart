import 'package:flutter/material.dart';
import 'package:pokemon2/model/pokemon.dart';

class PokemonRepository {
  static List<Pokemon> top10Pokemons() {
    return [
      const Pokemon(
        "Charmander",
        Pokemon (
            "Charmeleon",
            Pokemon("Charizard", null),
        ),
      ),
      const Pokemon(
        "Chikorita",
        Pokemon (
            "Bayleef",
            Pokemon("Meganium", null),
        ),
      ),
      const Pokemon(
        "Squirtle",
        Pokemon (
            "Wartortle",
            Pokemon("Blastoise", null),
        ),
      ),
      const Pokemon(
        "Mew",
        null,
      ),
      const Pokemon(
        "Meowth",
        Pokemon ("Persian", null),
      ),
      const Pokemon(
        "Oddish",
        Pokemon (
            "Gloom",
            Pokemon("Vileplume", null),
        ),
      ),
      const Pokemon(
        "Poliwag",
        Pokemon (
            "Poliwhirl",
            Pokemon("Poliwrath", null),
        ),
      ),
      const Pokemon(
        "Cyndaquil",
        Pokemon (
            "Quilava",
            Pokemon("Typhlosion", null),
        ),
      ),
      const Pokemon(
        "Cubone",
        Pokemon ("Marowak", null),
      ),
      const Pokemon(
        "Shellder",
        Pokemon ("Cloyster", null),
      ),
    ];
  }
}
