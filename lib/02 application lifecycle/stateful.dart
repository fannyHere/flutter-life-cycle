import 'package:flutter/material.dart';

class applif_stateful extends StatefulWidget {
  // const applif_stateful({super.key});

  @override
  State<applif_stateful> createState() => _applif_statefulState();
}

class _applif_statefulState extends State<applif_stateful>
    with WidgetsBindingObserver {
  //untuk dapetin didChangeAppLifecycleState

  int counter = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this); //supaya keprint
  }

  @override //agar tidak terjadi kebocoran memory
  void dispose() {
    WidgetsBinding.instance.removeObserver(this); //observer nya diremove
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print(state);
    //cara 1:
    // if (state == AppLifecycleState.inactive) {
    //   //...................
    // }

    //cara 2:
    switch (state) {
      case AppLifecycleState.inactive:
        setState(() {
          counter = 1000; //kondisinya kloinactive jadi segini angka
        });
        break;
      case AppLifecycleState.resumed:
        setState(() {
          counter = 0; //kondisinya balik dari inactive
        });
      case AppLifecycleState.paused:
        //..
        break;
      case AppLifecycleState.detached:
        //...
        break;
      default:
    }
    super.didChangeAppLifecycleState(state);
  }
//ada 3 status:
//kondisi inactive pas melayang layarnya
//kondisi resumed, itu balik lagi aplikasi layarnya dari kondisi inactive
//kondisi paused, ini tuh paslagi di app tiba-tiba langsung ke home tapi nanti inactive dulu ==> paused
//kondisi detached/suspend,closed applikasi

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Just My Application Lifecycle using Stateful"),
      ),
      body: Center(
        child: Text("$counter"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
