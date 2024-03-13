import 'package:flutter/material.dart';

class applif_stateless extends StatelessWidget with WidgetsBindingObserver {
  //const applif_stateless({super.key});

  applif_stateless() {
    WidgetsBinding.instance.addObserver(this);
    // WidgetsBinding.instance.removeObserver(this); //ini observernya bisa diremove
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print(state);
    //............
    super.didChangeAppLifecycleState(state);
  }

  //gapunya dispose ==> nanti memorynya bocor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Just My Application Lifecycle using Stateful"),
      ),
    );
  }
}
