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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Exemplo com Drawer'),
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
  Color _selectedColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        drawer: Drawer(
            backgroundColor: Colors.grey,
            child: ListView(children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: _selectedColor,
                ),
                child: Center(
                  child: Text(
                    'Seleção de Cor',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.square,
                  color: Colors.white,
                  shadows: [Shadow(color: Colors.black, offset: Offset(2, 2))],
                ),
                title: const Text('Branco'),
                onTap: () {
                  setState(() {
                    _selectedColor = Colors.white;
                    Future.delayed(const Duration(seconds: 1), () {
                      Navigator.of(context).pop();
                    });
                  });
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.square,
                  color: Colors.black,
                  shadows: [Shadow(color: Colors.white, offset: Offset(2, 2))],
                ),
                title: const Text('Preto'),
                onTap: () {
                  setState(() {
                    _selectedColor = const Color.fromARGB(255, 0, 0, 0);
                    Future.delayed(const Duration(seconds: 1), () {
                      Navigator.of(context).pop();
                    });
                  });
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.square,
                  color: Color.fromARGB(255, 218, 10, 10),
                  shadows: [Shadow(color: Colors.black, offset: Offset(2, 2))],
                ),
                title: const Text('Vermelho'),
                onTap: () {
                  setState(() {
                    _selectedColor = Colors.red;
                    Future.delayed(const Duration(seconds: 1), () {
                      Navigator.of(context).pop();
                    });
                  });
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.square,
                  color: Colors.blue,
                  shadows: [Shadow(color: Colors.black, offset: Offset(2, 2))],
                ),
                title: const Text('Azul'),
                onTap: () {
                  setState(() {
                    _selectedColor = Colors.blue;
                    Future.delayed(const Duration(seconds: 1), () {
                      Navigator.of(context).pop();
                    });
                  });
                },
              ),
            ])),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[])));
  }
}
