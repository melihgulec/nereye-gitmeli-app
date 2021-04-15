import 'package:flutter/material.dart';

class Hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Hakkında'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Text(
            'Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193301059 numaralı Melih GÜLEÇ tarafından 30 Nisan 2021 günü yapılmıştır.',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ));
  }
}
