import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Screen 2"),
        ),
        body: Container(
          child: Column(
            children: [
              RadioListTile(
                  subtitle: Text("Test"),
                  secondary: Icon(Icons.pentagon),
                  value: 0,
                  groupValue: _selected,
                  onChanged: (newValue) {
                    ScaffoldMessenger.of(this.context).showSnackBar(
                      SnackBar(content: Text("Successfully select 1")),
                    );
                    setState(() {
                      _selected = 0;
                    });
                  },
                  title: Text("Choice 1")),
              ListTile(
                  leading: Radio(
                      value: 1,
                      groupValue: _selected,
                      onChanged: (newValue) {
                        ScaffoldMessenger.of(this.context).showSnackBar(
                          SnackBar(content: Text("Successfully select 2")),
                        );
                        setState(() {
                          _selected = 1;
                        });
                      }),
                  title: Text("Choice 2")),
              ListTile(
                  leading: Radio(
                      value: 2,
                      groupValue: _selected,
                      onChanged: (newValue) {
                        ScaffoldMessenger.of(this.context).showSnackBar(
                          SnackBar(content: Text("Successfully select 3")),
                        );
                        setState(() {
                          _selected = 2;
                        });
                      }),
                  title: Text("Choice 3")),
            ],
          ),
        ));
  }
}
