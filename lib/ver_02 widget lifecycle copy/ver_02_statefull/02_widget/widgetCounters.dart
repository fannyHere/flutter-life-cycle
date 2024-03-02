import 'package:flutter/material.dart';
import 'package:section_dart_flutter_tambahan/ver_02%20widget%20lifecycle%20copy/ver_02_statefull/02_otherpage.dart';

class WidgetCounter extends StatefulWidget {
  WidgetCounter({
    super.key,
    required this.counter,
  }) {
    print("------------------------------------------");
    print("page widgetcounters: Contractor widget counters dijalankan ke-1");
  }

  final int counter;

  @override
  State<WidgetCounter> createState() {
    print(
        "page widgetcounters: create state () => dijalankan ke -2 setelah constructor");
    return _WidgetCounterState();
  }
}

class _WidgetCounterState extends State<WidgetCounter> {
  @override
  void initState() {
    //cuma dijalanin satu kali
    super.initState();
    print("page widgetcounters: initstate()"); //tidakbisa menggunakan konteks
  }

  @override
  void didChangeDependencies() {
    //dijalankan segera setelah initstate
    print("page widgetcounters: didChangeDependencies()");
    super.didChangeDependencies(); //bisa menggunakan konteks
  }

  @override
  void didUpdateWidget(covariant WidgetCounter oldWidget) {
    super.didUpdateWidget(oldWidget);
    print(
        "page widgetcounters: Old=> ${oldWidget.counter}"); //"${oldWidget.counter}" ngambil dari widget old sama counter integer
    print("page widgetcounters: didUpdateWidget()");
    print(
        "page widgetcounters: New=> ${widget.counter}"); //"${widget.counter}" ngambil dari text body()
  }

//DEACTIVE DAN DISPOSE ITU UNTUK MENUNJUKKAN STATENYA/WIDGETNYA HILANG ATAU TIDAK
//MAKSUDNYA TUH WIDGET NYA YANG ADA DI DALAM FUNGSI BUILD TUH KLO HILANG GIMANA DLL
//MAKE CONTOH ROUTE.....<HARUS BELAJAR ROUTE DULU HAHAH>

  @override
  void deactivate() {
    print("page widgetcounters: deactivate()");
    super.deactivate();
  }

  @override
  void dispose() {
    print("page widgetcounters: dispose()");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(
        "page widgetcounters: build() dijalankan ketika mengeksekusi kode di fungsi build ini");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${widget.counter}", style: TextStyle(fontSize: 50)),
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
                Navigator.pushReplacementNamed(
                    context, otherpage_ver_02.routeName,
                    arguments: widget
                        .counter); //karena make routing, ngepasinnya make arguments
//jangan lupaklo udah bikin arguments di sini widgetcounters & every stateful ==> lempar juga ke halaman otherpage
//++++++++++++
//nambahin arguments di widget counters page supaya apa? ==> supaya nilai yang ditambah dari page every statfeul di fungsi build() bagian set state, pas pindah page ke otherpage pas balik lagi angkanya tetep sama
//nahmakanya ambil <<widget.counter>> ===> artinya counter angka yang terkini yang tampil

                //nanti akan menjalankan fungsi deactive dan dispose
                //karena klik button ke home page itu artinya berubah page state/tampilannya, jadi ngga ada counter lagi jadinya si dua fungsi yang di atas muuncul karena berunbah state/keadaan
                //hasilprintnya:
                // I/flutter ( 9894): deactivate()
                // I/flutter ( 9894): dispose()
              },
              child: Text("PINDAH PAGE")),
        ],
      ),
    );
  }
}
