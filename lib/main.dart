import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon2/widgets/reordable_poke_list.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
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
        textTheme: TextTheme(
          titleLarge: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SourceSansPro',
          ),
          titleMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SourceSansPro',
            color: Colors.red.shade900,
          ),
          labelLarge: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SourceSansPro',
            color: Colors.black,
          ),
          labelMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SourceSansPro',
            color: Colors.blue.shade900,
          )
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

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Axis scrollDirection = ref.read(scrollDirectionProvider);

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
          heightFactor: scrollDirection == Axis.vertical ? 0.8 : 0.5,
          widthFactor: 0.7,
          child: ReorderablePokeList(scrollDirection: scrollDirection),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: getIconsToChangeDirection(scrollDirection),
        ),
        onPressed: () {
          setState(() {
            Axis newScrollDirection = getNewScrollDirection();
            ref.read(scrollDirectionProvider.notifier).update((state) => state = newScrollDirection);
          });
        },
      ),
    );
  }

  Axis getNewScrollDirection() {
    return ref.read(scrollDirectionProvider) == Axis.vertical ? Axis.horizontal : Axis.vertical;
  }

  List<Icon> getIconsToChangeDirection(Axis scrollDirection) {
    return ref.read(scrollDirectionAndIconsMapProvider)[scrollDirection]!;
  }
}

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
