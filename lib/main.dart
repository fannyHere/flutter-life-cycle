import 'package:flutter/material.dart';
import 'package:section_dart_flutter_tambahan/02%20application%20lifecycle/stateful.dart';

void main() {
  runApp(MyApp());
  print("page main: CONTRSACTOR STATELESS/STATEFULL, diprint pertama kali");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("page main: build ()");
    return MaterialApp(
      home: applif_stateful(),
      //home: statefull_ver_02(),
      // routes: {
      //   statefull_ver_02.routeName: (ctx) => statefull_ver_02(),
      //   otherpage_ver_02.routeName: (ctx) => otherpage_ver_02(),
      // },
    );
  }
}



// jadiintinya tuh pas di halaman awal counter ==> fungsi (a) berhasil dijalankan semua, tapi ada 2 fungsi (b)yang dijalankan ketika kondisi sebagai berikut:
// 1.kondisi saat menekan pindah page yang berubah state/kondisi (alias tidak lagi ada counternya) nah 2 fungsi (b) akan muncul pada halaman other page
// nah, selanjutnyadari halaman other page, saat mengklik back to counter statefull condition itu bakal muncul dari awal fungsi berikut (c).

//fungsi (a):
// I/flutter ( 9894): CONTRSACTOR STATELESS/STATEFULL, diprint pertama kali
// I/flutter ( 9894): Constructor STF dijalankan ke-1
// I/flutter ( 9894): create states PRINT dijalankan ke-2
// I/flutter ( 9894): initstate()
// I/flutter ( 9894): didChangeDependencies()
// I/flutter ( 9894): build() pasti diprint setelah dan nambah nilai klo nambah increment

//fungsi (b):
// I/flutter ( 9894): deactivate()
// I/flutter ( 9894): dispose()

//fungsi (c):
// I/flutter ( 9894): Constructor STF dijalankan ke-1
// I/flutter ( 9894): create states PRINT dijalankan ke-2
// I/flutter ( 9894): initstate()
// I/flutter ( 9894): didChangeDependencies()
// I/flutter ( 9894): build() pasti diprint setelah dan nambah nilai klo nambah increment


//resume life cycle widget so far:
// Restarted application in 4,087ms.
// I/flutter ( 9894): CONTRSACTOR STATELESS/STATEFULL, diprint pertama kali
// I/flutter ( 9894): Constructor STF dijalankan ke-1
// I/flutter ( 9894): create states PRINT dijalankan ke-2
// I/flutter ( 9894): initstate()
// I/flutter ( 9894): didChangeDependencies()
// I/flutter ( 9894): build() pasti diprint setelah dan nambah nilai klo nambah increment
// D/EGL_emulation( 9894): app_time_stats: avg=39549.37ms min=39549.37ms max=39549.37ms count=1
// I/flutter ( 9894): 1
// D/EGL_emulation( 9894): app_time_stats: avg=4500.51ms min=4500.51ms max=4500.51ms count=1
// I/flutter ( 9894): build() pasti diprint setelah dan nambah nilai klo nambah increment
// D/EGL_emulation( 9894): app_time_stats: avg=214.31ms min=25.96ms max=1071.14ms count=8
// W/WindowOnBackDispatcher( 9894): OnBackInvokedCallback is not enabled for the application.
// W/WindowOnBackDispatcher( 9894): Set 'android:enableOnBackInvokedCallback="true"' in the application manifest.
// I/flutter ( 9894): deactivate()
// I/flutter ( 9894): dispose()
// D/EGL_emulation( 9894): app_time_stats: avg=1194.95ms min=27.76ms max=7690.91ms count=7
// I/flutter ( 9894): Constructor STF dijalankan ke-1
// I/flutter ( 9894): create states PRINT dijalankan ke-2
// I/flutter ( 9894): initstate()
// I/flutter ( 9894): didChangeDependencies()
// I/flutter ( 9894): build() pasti diprint setelah dan nambah nilai klo nambah increment
// W/WindowOnBackDispatcher( 9894): OnBackInvokedCallback is not enabled for the application.
// W/WindowOnBackDispatcher( 9894): Set 'android:enableOnBackInvokedCallback="true"' in the application manifest.
