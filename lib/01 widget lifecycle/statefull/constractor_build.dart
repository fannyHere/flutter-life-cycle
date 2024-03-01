import 'package:flutter/material.dart';

class statefull_ver_counter_page extends StatefulWidget {
  // Constructor
  statefull_ver_counter_page({Key? key}) : super(key: key) {
    print("Constructor STATEFUL dijalankan pertama kali");
  }

  @override
  State<statefull_ver_counter_page> createState() =>
      _statefull_ver_counter_pageState();
}

class _statefull_ver_counter_pageState
    extends State<statefull_ver_counter_page> {
  int counter = 0;

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
