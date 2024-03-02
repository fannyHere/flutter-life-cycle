import 'package:flutter/material.dart';
import 'package:section_dart_flutter_tambahan/ver_02%20widget%20lifecycle%20copy/ver_02_statefull/02_widget/widgetCounters.dart';

class statefull_ver_02 extends StatefulWidget {
  static const routeName = "/statefull_ver_02_02";

  statefull_ver_02({Key? key}) : super(key: key) {
    print("++++++++++++++++++++++++++++++++++++++");
    print("page everystateful: Constructor STF ver 02 dijalankan ke-1");
  }

  @override
  State<statefull_ver_02> createState() {
    print(
        "page everystateful: createstate () dijalankan ke-2 setelah constructor");
    return _statefull_ver_02();
  }
}

class _statefull_ver_02 extends State<statefull_ver_02> {
  int counter = 0; //state atau keadaan awal

  // @override
  // void initState() {
  //   super.initState();
  //   // int numberStatePalingAkhir;
  //   // ModalRoute.of(context).settings.arguments as int;
  //   // counter = numberStatePalingAkhir;
  //   //++++gabisa taro sini soalnya yang make context itu didchangedepedencies bukan initstate
  // }

  // @override
  // void didChangeDependencies() {
  //   final arguments = ModalRoute.of(context)?.settings.arguments;
  //   if (arguments != null && arguments is int) {
  //     counter = arguments;
  //   }
  //   super.didChangeDependencies();
  // }

  @override
  void didChangeDependencies() {
    final int? numberStatePalingAkhir =
        ModalRoute.of(context)!.settings.arguments as int?;
    if (numberStatePalingAkhir != null) {
      counter = numberStatePalingAkhir;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print(
        "page everystateful: build() menjalankan fungsi build ( yang ada di dalam fungsi build ini)");
    return Scaffold(
      appBar: AppBar(
        title: Text("COUNTER stateFULL ver 02 PUSING"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: WidgetCounter(counter: counter),
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
