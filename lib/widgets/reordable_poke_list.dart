import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon2/widgets/poke_card.dart';
import 'package:pokemon2/model/pokemon.dart';
import 'package:pokemon2/repositories/pokemons_repository.dart';

import '../providers.dart';

class ReorderablePokeList extends ConsumerStatefulWidget {
  const ReorderablePokeList({super.key, required this.scrollDirection});

  final Axis scrollDirection;

  @override
  ReorderablePokeListState createState() =>
      ReorderablePokeListState();
}

class ReorderablePokeListState
    extends ConsumerState<ReorderablePokeList> {

  @override
  Widget build(BuildContext context) {
    final pokemons = ref.watch(pokemonsListProvider);

    void replacePokemon(currentPokemon, newPokemon) {
      ref.read(pokemonsListProvider.notifier).update((state) {
        final replacedPokeList = List<Pokemon>.from(pokemons);
        final currentPokemonIndex = replacedPokeList.indexOf(currentPokemon);

        replacedPokeList.remove(currentPokemon);
        replacedPokeList.insert(currentPokemonIndex, newPokemon);
        state = replacedPokeList;

        return state;
      });
    }

    return ReorderableListView(
      scrollDirection: widget.scrollDirection,
      children: <Widget>[
        for (Pokemon pokemon in pokemons)
          PokeCard(key: Key(pokemon.name), pokemon: pokemon, replacePokemon: replacePokemon,)
      ],
      onReorder: (int oldIndex, int newIndex) {
        ref.read(pokemonsListProvider.notifier).update((state) {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }

          final reorderedPokeList = List<Pokemon>.from(pokemons);
          Pokemon pokemon = reorderedPokeList.removeAt(oldIndex);
          reorderedPokeList.insert(newIndex, pokemon);

          state = reorderedPokeList;
          return state;
        });
      },
    );
  }
}
