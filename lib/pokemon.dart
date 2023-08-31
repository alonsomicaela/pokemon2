import 'package:flutter/material.dart';

class Pokemon {
  String _name;
  Color _color;

  Pokemon(pokeName, pokeColor):
        _name = pokeName,
        _color = pokeColor;

  get name => _name;

  get color => _color;
}