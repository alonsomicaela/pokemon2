import 'package:flutter/material.dart';
import 'package:pokemon2/widgets/poke_card.dart';
import 'package:pokemon2/model/pokemon.dart';
import 'package:pokemon2/repositories/pokemons_repository.dart';

class ReorderablePokeList extends StatefulWidget {
  const ReorderablePokeList({super.key, required this.scrollDirection});

  final Axis scrollDirection;

  @override
  State<ReorderablePokeList> createState() =>
      _ReorderablePokeListState();
}

class _ReorderablePokeListState
    extends State<ReorderablePokeList> {

  var _pokemons;

  @override
  void initState() {
    super.initState();

    _pokemons = PokemonRepository.top10Pokemons();
  }

  @override
  Widget build(BuildContext context) {
    void replacePokemon(currentPokemon, newPokemon) {
      setState(() {
        final currentPokemonIndex = _pokemons.indexOf(currentPokemon);

        _pokemons.remove(currentPokemon);
        _pokemons.insert(currentPokemonIndex, newPokemon);
      });
    }

    return ReorderableListView(
      scrollDirection: widget.scrollDirection,
      children: <Widget>[
        for (Pokemon pokemon in _pokemons)
          PokeCard(key: Key(pokemon.name), pokemon: pokemon, replacePokemon: replacePokemon,)
      ],
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }

          final Pokemon pokemon = _pokemons.removeAt(oldIndex);
          _pokemons.insert(newIndex, pokemon);
        });
      },
    );
  }
}