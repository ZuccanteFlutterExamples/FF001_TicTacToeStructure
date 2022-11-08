import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final EdgeInsets gap = const EdgeInsets.all(5);
  final List<int> indices = [0, 0, 0, 0, 0, 0, 0, 0, 0];
  final List<Icon?> icons = [
    null,
    const Icon(
      Icons.ac_unit,
      color: Colors.white,
    ),
    const Icon(
      Icons.games_outlined,
      color: Colors.white,
    ),
    const Icon(
      Icons.access_alarm,
      color: Colors.white,
    ),
    const Icon(
      Icons.circle,
      color: Colors.white,
    ),
  ];

  void updateIndex(int index) => setState(
        () => indices[index] = (indices[index] + 1) % icons.length,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Tile(
                      gap: gap,
                      icon: icons[indices[0]],
                      onPressed: () => updateIndex(0),
                    ),
                    Tile(
                      gap: gap,
                      icon: icons[indices[1]],
                      onPressed: () => updateIndex(1),
                    ),
                    Tile(
                      gap: gap,
                      icon: icons[indices[2]],
                      onPressed: () => updateIndex(2),
                      color: Colors.redAccent,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin: gap,
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: MaterialButton(
                            color: Colors.indigo,
                            onPressed: () => updateIndex(3),
                            child: icons[indices[3]],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: gap,
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: MaterialButton(
                            color: Colors.indigo,
                            onPressed: () => updateIndex(4),
                            child: icons[indices[4]],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: gap,
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: MaterialButton(
                            color: Colors.indigo,
                            onPressed: () => updateIndex(5),
                            child: icons[indices[5]],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin: gap,
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: MaterialButton(
                            color: Colors.indigo,
                            onPressed: () => updateIndex(6),
                            child: icons[indices[6]],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: gap,
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: MaterialButton(
                            color: Colors.indigo,
                            onPressed: () => updateIndex(7),
                            child: icons[indices[7]],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: gap,
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: MaterialButton(
                            color: Colors.indigo,
                            onPressed: () => updateIndex(8),
                            child: icons[indices[8]],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Tile extends StatefulWidget {
  const Tile({
    Key? key,
    required this.gap,
    required this.onPressed,
    this.color = Colors.indigo,
    this.icon,
  }) : super(key: key);

  final EdgeInsets gap;
  final Icon? icon;
  final void Function()? onPressed;
  final Color color;

  @override
  State<StatefulWidget> createState() => _Tile();
}

class _Tile extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: widget.gap,
      child: AspectRatio(
        aspectRatio: 1,
        child: MaterialButton(
          color: widget.color,
          onPressed: widget.onPressed,
          child: widget.icon,
        ),
      ),
    ));
  }
}
