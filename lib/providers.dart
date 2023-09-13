import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon2/repositories/pokemons_repository.dart';

import 'model/pokemon.dart';

final scrollDirectionProvider = StateProvider<Axis>((ref) => Axis.vertical);

final scrollDirectionAndIconsMapProvider = Provider<Map<Axis, List<Icon>>>((ref) {
  return  {
    Axis.vertical: [
      const Icon(Icons.keyboard_arrow_left),
      const Icon(Icons.keyboard_arrow_right),
    ],
    Axis.horizontal: [
      const Icon(Icons.keyboard_arrow_up),
      const Icon(Icons.keyboard_arrow_down),
    ]
  };
});

final pokemonsListProvider = StateProvider<List<Pokemon>>((ref) => PokemonRepository.top10Pokemons());
