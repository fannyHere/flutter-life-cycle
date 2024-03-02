import 'package:flutter/material.dart';
import 'package:section_dart_flutter_tambahan/ver_02%20widget%20lifecycle%20copy/ver_02_statefull/02_every_stateful_ver.dart';

class otherpage_ver_02 extends StatefulWidget {
  const otherpage_ver_02({super.key});
  static const routeName = "/otherpage_ver_02";

  @override
  State<otherpage_ver_02> createState() => _otherpage_ver_02State();
}

class _otherpage_ver_02State extends State<otherpage_ver_02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Other Pageee"),
      ),
      body: Center(
        child: OutlinedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                statefull_ver_02.routeName,
                arguments: ModalRoute.of(context)!.settings.arguments as int,
              );
              //ngebalikin argument yang udah didpaet dibalikin lagi ke counterpage
            },
            child: Text("BACK TO COUNTER STATEFUULL")),
      ),
    );
  }
}

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
