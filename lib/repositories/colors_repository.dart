import 'package:flutter/material.dart';
import 'package:pokemon2/model/pokemon.dart';

class ColorsRepository {
  static final Map<String, Map<String, Color>> allPokemonsColors = {
    "Charmander": {
      "normal": Colors.orangeAccent.shade100,
      "shiny": Colors.amberAccent.shade100,
    },
    "Charmeleon": {
      "normal": Colors.orangeAccent.shade400,
      "shiny": Colors.amberAccent.shade400,
    },
    "Charizard": {
      "normal": Colors.orangeAccent.shade700,
      "shiny": Colors.amberAccent.shade700,
    },
    "Chikorita": {
      "normal": Colors.green.shade100,
      "shiny": Colors.lime.shade100,
    },
    "Bayleef": {
      "normal": Colors.green.shade400,
      "shiny": Colors.lime.shade400,
    },
    "Meganium": {
      "normal": Colors.green.shade700,
      "shiny": Colors.lime.shade700,
    },
    "Squirtle": {
      "normal": Colors.indigo.shade100,
      "shiny": Colors.lightGreen.shade100,
    },
    "Wartortle": {
      "normal": Colors.indigo.shade400,
      "shiny": Colors.lightGreen.shade400,
    },
    "Blastoise":{
      "normal": Colors.indigo.shade700,
      "shiny": Colors.lightGreen.shade700,
    },
    "Mew": {
      "normal": Colors.purple.shade100,
      "shiny": Colors.blueAccent.shade100,
    },
    "Meowth":{
      "normal": Colors.amber.shade100,
      "shiny": Colors.orangeAccent.shade100,
    },
    "Persian": {
      "normal": Colors.amber.shade400,
      "shiny": Colors.orangeAccent.shade400,
    },
    "Oddish": {
      "normal": Colors.blueGrey.shade100,
      "shiny": Colors.teal.shade100,
    },
    "Gloom": {
      "normal": Colors.blueGrey.shade400,
      "shiny": Colors.teal.shade400,
    },
    "Vileplume": {
      "normal": Colors.blueGrey.shade700,
      "shiny": Colors.teal.shade700,
    },
    "Poliwag": {
      "normal": Colors.blue.shade100,
      "shiny": Colors.lightBlue.shade100,
    },
    "Poliwhirl": {
      "normal": Colors.blue.shade400,
      "shiny": Colors.lightBlue.shade400,
    },
    "Poliwrath": {
      "normal": Colors.blue.shade700,
      "shiny": Colors.lightGreenAccent.shade700,
    },
    "Cyndaquil": {
      "normal": Colors.orange.shade100,
      "shiny": Colors.deepOrange.shade100,
    },
    "Quilava": {
      "normal": Colors.orange.shade400,
      "shiny": Colors.deepOrange.shade400,
    },
    "Typhlosion": {
      "normal": Colors.orange.shade700,
      "shiny": Colors.deepOrange.shade700,
    },
    "Cubone": {
      "normal": Colors.brown.shade100,
      "shiny": Colors.limeAccent.shade100,
    },
    "Marowak": {
      "normal": Colors.brown.shade400,
      "shiny": Colors.limeAccent.shade400,
    },
    "Shellder": {
      "normal": Colors.pink.shade100,
      "shiny": Colors.orangeAccent.shade100,
    },
    "Cloyster": {
      "normal": Colors.pink.shade200,
      "shiny": Colors.indigo.shade400,
    },
  };

  static getColorForPokemon(Pokemon pokemon, bool onShinyMode) {
    var pokemonColors = allPokemonsColors[pokemon.name];
    var colorStyle = onShinyMode ? 'shiny' : 'normal';

    return pokemonColors?[colorStyle];
  }
}