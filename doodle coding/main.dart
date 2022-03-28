import 'package:flutter/material.dart';

void main() {
  // runApp(Example());
  runApp(HelloWorld());
}

class HelloWorld extends StatefulWidget {
  @override
  State<HelloWorld> createState() => _HelloWorldState();
}

class _HelloWorldState extends State<HelloWorld> {
  const HelloWorld({Key? key}) : super(key: key);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const IconButton(
            tooltip: "Navigation Menu",
            onPressed: null,
            icon: Icon(Icons.menu),
          ),
          backgroundColor: Color.fromRGBO(24, 112, 86, 32),
          title: Text('Menu', textAlign: TextAlign.center),
        ),
        body: Container(
          child: Center(
            child: Text(
              _counter.toString(),
              semanticsLabel: ' Hello world',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 50, color: Color.fromRGBO(24, 112, 86, 32)),
            ),
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
        ),
      ),
    );
  }
}

class Example extends StatefulWidget {
  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Navigation Menu",
            onPressed: () {
              _NavContext(context);
            },
          ),
          title: Text("Example"),
        ),
      ),
    );
    throw UnimplementedError();
  }

  void _NavContext(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RadioMenu()));
  }
}

class RadioMenu extends StatefulWidget {
  @override
  State<RadioMenu> createState() => _RadioMenuState();
}

class _RadioMenuState extends State<RadioMenu> {
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("RadioMenu"),
          ),
          body: Column(
            children: [
              ListTile(
                  leading: Radio(
                      value: 0,
                      groupValue: _selected,
                      onChanged: (newValue) {
                        setState() {
                          _selected = 0;
                        }
                      }),
                  title: Text("Choice 1")),
              ListTile(
                  leading: Radio(
                      value: 1,
                      groupValue: _selected,
                      onChanged: (newValue) {
                        setState() {
                          _selected = 1;
                        }
                      }),
                  title: Text("Choice 2")),
              ListTile(
                  leading: Radio(
                      value: 2,
                      groupValue: _selected,
                      onChanged: (newValue) {
                        setState() {
                          _selected = 2;
                        }
                      }),
                  title: Text("Choice 3")),
            ],
          )),
    );
  }
}
