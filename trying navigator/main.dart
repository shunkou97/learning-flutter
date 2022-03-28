import 'package:flutter/material.dart';
import 'package:flutter_application_3/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Screen2()));
                }),
                child: Text("Button")),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        tooltip: "Add 1",
        backgroundColor: Color.fromRGBO(10, 80, 90, 100),
        label: const Text('button'),
        icon: Icon(Icons.plus_one),
        onPressed: () {
          // var newSnackbar = SnackBar(content: Text("Successfully added 1"));
          ScaffoldMessenger.of(this.context).showSnackBar(
            SnackBar(content: Text("Successfully added 1")),
          );
          setState(() {
            _counter += 1;
            print(_counter);
          });
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// class Example extends StatefulWidget {
//   @override
//   State<Example> createState() => _ExampleState();
// }

// class _ExampleState extends State<Example> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           leading: IconButton(
//             icon: Icon(Icons.menu),
//             tooltip: "Navigation Menu",
//             onPressed: () {
//               _NavContext(context);
//             },
//           ),
//           title: Text("Example"),
//         ),
//       ),
//     );
//     throw UnimplementedError();
//   }

//   void _NavContext(BuildContext context) {
//     Navigator.push(
//         context, MaterialPageRoute(builder: (context) => RadioMenu()));
//   }
// }

