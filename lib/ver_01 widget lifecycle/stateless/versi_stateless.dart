import 'package:flutter/material.dart';

class stateless_ver_counter_page extends StatelessWidget {
  const stateless_ver_counter_page({super.key});

  @override
  Widget build(BuildContext context) {
    print(
        "CONTRSACTOR build(), diprint setelah constractor dan akan terus nambah cuma ga ubah kondisi UI");

    return Scaffold(
      appBar: AppBar(
        title: Text("counter stateless"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Text("0", style: TextStyle(fontSize: 50)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
