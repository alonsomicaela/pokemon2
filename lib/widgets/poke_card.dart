import 'package:flutter/material.dart';
import 'package:pokemon2/model/pokemon.dart';
import 'package:pokemon2/repositories/colors_repository.dart';
import 'package:pokemon2/widgets/no_evolution_alert_dialog.dart';

class PokeCard extends StatefulWidget {
  const PokeCard({super.key, required this.pokemon, required this.replacePokemon});

  final Pokemon pokemon;
  final Function replacePokemon;

  @override
  State<StatefulWidget> createState() =>
      _PokeCardState();
}

class _PokeCardState extends State<PokeCard>{
  var _onShinyMode;
  var pokemonsColors;

  @override
  void initState() {
    super.initState();

    _onShinyMode = false;
  }

  @override
  Widget build(BuildContext context) {
    Pokemon pokemon = widget.pokemon;
    String imageName = _onShinyMode ? '${pokemon.name.toLowerCase()}_shiny' : pokemon.name.toLowerCase();

    return SizedBox(
      height: 146,
      width: 267,
      child: GestureDetector(
        onTap: () {
          setState(() {
            _onShinyMode = !_onShinyMode;
          });
        },
        onDoubleTap: () {
          setState(() {
            if(pokemon.hasEvolution()) {
              widget.replacePokemon(pokemon, pokemon.evolution);
            } else {
              showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => NoEvolutionDialog(pokemon: pokemon,),
              );
            }
          });
        },
        child: Card(
          elevation: 10,
          color: ColorsRepository.getColorForPokemon(pokemon, _onShinyMode),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 0,
                  child: Text(
                    style: Theme.of(context).textTheme.labelLarge,
                    '${pokemon.name}:',
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Image.asset('assets/$imageName.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
