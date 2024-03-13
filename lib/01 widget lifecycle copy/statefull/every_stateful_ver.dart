import 'package:flutter/material.dart';
import 'package:section_dart_flutter_tambahan/ver_01%20widget%20lifecycle/statefull/otherpage.dart';

class statefull_ver extends StatefulWidget {
  static const routeName = "/statefull_ver";

  statefull_ver({Key? key}) : super(key: key) {
    print("Constructor STF dijalankan ke-1");
  }

  @override
  State<statefull_ver> createState() {
    print("create states PRINT dijalankan ke-2");
    return _statefull_ver();
  }
}

class _statefull_ver extends State<statefull_ver> {
  int counter = 0; //state atau keadaan awal

  @override
  void initState() {
    //cuma dijalanin satu kali
    super.initState();
    print("initstate()"); //tidakbisa menggunakan konteks
  }

  @override
  void didChangeDependencies() {
    //dijalankan segera setelah initstate
    print("didChangeDependencies()");
    super.didChangeDependencies(); //bisa menggunakan konteks
  }

  @override
  void didUpdateWidget(covariant statefull_ver oldWidget) {
    print(
        "didUpdateWidget()"); //supaya pas increment misal awalnya 0 maka nilai awalnya / oldnya 0 terus pas counternya angkanya 3, jadi oldnya 0 newestnya 3
    super.didUpdateWidget(oldWidget);
  }

//DEACTIVE DAN DISPOSE ITU UNTUK MENUNJUKKAN STATENYA/WIDGETNYA HILANG ATAU TIDAK
//MAKSUDNYA TUH WIDGET NYA YANG ADA DI DALAM FUNGSI BUILD TUH KLO HILANG GIMANA DLL
//MAKE CONTOH ROUTE.....<HARUS BELAJAR ROUTE DULU HAHAH>

  @override
  void deactivate() {
    print("deactivate()");
    super.deactivate();
  }

  @override
  void dispose() {
    print("dispose()");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(
        "build() pasti diprint setelah dan nambah nilai klo nambah increment");

    return Scaffold(
      appBar: AppBar(
        title: Text("counter stateFULL PUSING"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$counter", style: TextStyle(fontSize: 50)),
            SizedBox(
              height: 50,
            ),
            OutlinedButton(
                onPressed: () {
                  //Navigator.pushNamed(context, otherpage.routeName);
                  //outputnya:
                  // I/flutter ( 9894): CONTRSACTOR STATELESS/STATEFULL, diprint pertama kali
                  // I/flutter ( 9894): Constructor STF dijalankan ke-1
                  // I/flutter ( 9894): create states PRINT dijalankan ke-2
                  // I/flutter ( 9894): initstate()
                  // I/flutter ( 9894): didChangeDependencies()
                  // I/flutter ( 9894): build() pasti diprint setelah dan nambah nilai klo nambah increment
                  //=================================================================
                  //pas diprint kan cuma ada print cosntractor, setstate, initstate, depedency, built
                  //nah sisanya ngga keliatan
                  //pas dipush buttonnya itu sama aja ngga ada perubahan
                  //coba diubah jadi:
                  Navigator.pushReplacementNamed(context, otherpage.routeName);
                  //nanti akan menjalankan fungsi deactive dan dispose
                  //karena klik button ke home page itu artinya berubah page state/tampilannya, jadi ngga ada counter lagi jadinya si dua fungsi yang di atas muuncul karena berunbah state/keadaan
                  //hasilprintnya:
                  // I/flutter ( 9894): deactivate()
                  // I/flutter ( 9894): dispose()
                },
                child: Text("PINDAH PAGE")),
          ],
        ),
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
