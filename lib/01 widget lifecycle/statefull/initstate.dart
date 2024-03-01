import 'package:flutter/material.dart';

class statefull_ver_initstate extends StatefulWidget {
  // Constructor
  statefull_ver_initstate({Key? key}) : super(key: key) {
    print("Constructor STATEFUL dijalankan pertama kali");
  }

  @override
  State<statefull_ver_initstate> createState() => _statefull_ver_initstate();
}

class _statefull_ver_initstate extends State<statefull_ver_initstate> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    print("initstate()");
  }

  @override
  Widget build(BuildContext context) {
    print("build() diprint setelah constructor");

    return Scaffold(
      appBar: AppBar(
        title: Text("counter stateless"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Text("$counter", style: TextStyle(fontSize: 50)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
            print(counter);
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
