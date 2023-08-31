import 'package:flutter/material.dart';
import 'package:pokemon2/pokemon.dart';

class PokeCard extends StatefulWidget {
  const PokeCard({super.key, required this.pokemon,});

  final Pokemon pokemon;

  @override
  State<StatefulWidget> createState() =>
      _PokeCardState();
}

class _PokeCardState extends State<PokeCard>{
  var _onShinyMode;

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
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: const Color(0x99d4af37),
              width: _onShinyMode ? 5.0 : 0,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 10,
          color: pokemon.color,
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
