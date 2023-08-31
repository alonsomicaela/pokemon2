import 'dart:ui';

class Pokemon {
  String _name;
  Color _color;
  String _image;
  String _shinyImage;

  Pokemon(pokeName, pokeImage, pokeColor, pokeShinyImage):
        _name = pokeName,
        _color = pokeColor,
        _image = pokeImage,
        _shinyImage = pokeShinyImage;

  get name => _name;

  get color => _color;

  get image => _image;

  get shinyImage => _shinyImage;
}