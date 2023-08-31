import 'package:flutter/material.dart';
import 'package:pokemon2/reordable_poke_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemones',
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.dark(
          primary: Colors.yellow,
          onPrimary: Colors.blue.shade900,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SourceSansPro',
          ),
          labelLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SourceSansPro',
            color: Colors.black,
          ),
        ),
      ),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light(
          primary: Colors.blue.shade900,
          onPrimary: Colors.yellow,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SourceSansPro',
          ),
          labelLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SourceSansPro',
          ),
        ),
      ),
      home: const MyHomePage(title: 'Pokemon App!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Map<Axis, List<Icon>> _scrollDirectionMap = {
    Axis.vertical: [
      const Icon(Icons.keyboard_arrow_left),
      const Icon(Icons.keyboard_arrow_right),
    ],
    Axis.horizontal: [
      const Icon(Icons.keyboard_arrow_up),
      const Icon(Icons.keyboard_arrow_down),
    ]
  };
  
  var _scrollDirection;
  
  @override
  void initState() {
    super.initState();

    _scrollDirection = Axis.vertical;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Center(
          child: Text(
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
              widget.title),
        ),
      ),
      body: Center(
        child: FractionallySizedBox(
          heightFactor: _scrollDirection == Axis.vertical ? 0.8 : 0.5,
          widthFactor: 0.7,
          child: ReorderablePokeList(scrollDirection: _scrollDirection),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: getIconsToChangeDirection(_scrollDirection),
        ),
        onPressed: () {
          setState(() {
            Axis newScrollDirection = getNewScrollDirection();
            _scrollDirection = newScrollDirection;
          });
        },
      ),
    );
  }

  Axis getNewScrollDirection() {
    return _scrollDirection == Axis.vertical ? Axis.horizontal : Axis.vertical;
  }

  List<Icon> getIconsToChangeDirection(Axis scrollDirection) {
    return _scrollDirectionMap[scrollDirection]!;
  }

}
