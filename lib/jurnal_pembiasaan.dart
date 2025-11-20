import 'package:flutter/material.dart';
import 'package:jurnalku_mobile/login.dart';

class JurnalPembiasaanPage extends StatelessWidget {
  const JurnalPembiasaanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(Icons.home, color: Colors.black),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    "Mochamad Reivaldy Zaen",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "PPLG XII-3",
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            CircleAvatar(
              radius: 16,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jurnal Pembiasaan",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              SizedBox(height: 12),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.arrow_back),
                    SizedBox(width: 8),
                    Text("Bulan\nSebelumnya"),
                  ],
                ),
              ),

              SizedBox(height: 25),

              Text(
                "A. Pembiasaan Harian",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),

              SizedBox(height: 15),

              Wrap(
                spacing: 20,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.circle, color: Colors.green, size: 15),
                      SizedBox(width: 6),
                      Text("Sudah di isi"),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.circle, color: Colors.grey, size: 15),
                      SizedBox(width: 6),
                      Text("Belum di isi"),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.circle, color: Colors.red, size: 15),
                      SizedBox(width: 6),
                      Text("Tidak di isi"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),

              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  tidakTerisi("03"),
                  sudahTerisi("04"),
                  tidakTerisi("05"),
                  sudahTerisi("06"),
                  tidakTerisi("07"),
                  tidakTerisi("08"),
                  sudahTerisi("09"),
                  tidakTerisi("10"),
                  tidakTerisi("11"),
                  sudahTerisi("12"),
                  tidakTerisi("13"),
                  tidakTerisi("14"),
                  sudahTerisi("15"),
                  belumTerisi("16"),
                  belumTerisi("17"),
                  belumTerisi("18"),
                  belumTerisi("19"),
                  belumTerisi("20"),
                  belumTerisi("19"),
                  belumTerisi("20"),
                ],
              ),

              SizedBox(height: 20),
              Text(
                "B. Pekerjaan Yang Dilakukan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),

              //TABEL B
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Table(
                  border: TableBorder.symmetric(
                    inside: BorderSide(color: Colors.grey.shade300),
                  ),
                  columnWidths: const {
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(1),
                    2: FlexColumnWidth(1),
                  },
                  children: [
                    TableRow(
                      decoration: BoxDecoration(
                        color: Color(0xFFE8F0FE),
                      ),
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "Pekerjaan",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "Tgl",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "Saksi",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "belum ada pekerjaan yang di input.",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        SizedBox(),
                        SizedBox(),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Text(
                "C. Materi yang dipelajari",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),

              //TABEL C
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Table(
                  border: TableBorder.symmetric(
                    inside: BorderSide(color: Colors.grey.shade300),
                  ),
                  columnWidths: const {
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(1),
                    2: FlexColumnWidth(1),
                  },
                  children: [
                    TableRow(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                      ),
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "Materi",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "Tgl",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "Saksi",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "belum ada pekerjaan yang di input.",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        SizedBox(),
                        SizedBox(),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Text("D. Poin", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 12),

              // ======== TABEL D =========
              Table(
                border: TableBorder.all(color: Colors.grey),
                columnWidths: const {
                  0: FlexColumnWidth(3),
                  1: FlexColumnWidth(1),
                  2: FlexColumnWidth(1),
                  3: FlexColumnWidth(1),
                  4: FlexColumnWidth(1),
                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text("Kategori Poin", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text("M1", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text("M2", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text("M3", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text("M4", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),

                  // Isi tabel poin
                  poinRow('(5) mengerjakan project/adanya update progress belajar'),
                  poinRow('(1 - 5) poin dari pertanyaan atau laporan pengetahuan materi'),
                  poinRow('Jumlah poin minggu ini'),
                  poinRow('Jumlah poin ceklist pembiasaan'),
                  poinRow('Jumlah keseluruhan poin'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

TableRow poinRow(String text) {
  return TableRow(
    children: [
      Padding(padding: EdgeInsets.all(8), child: Text(text)),
      Padding(padding: EdgeInsets.all(8), child: Text("0")),
      Padding(padding: EdgeInsets.all(8), child: Text("0")),
      Padding(padding: EdgeInsets.all(8), child: Text("0")),
      Padding(padding: EdgeInsets.all(8), child: Text("0")),
    ],
  );
}

// ===== Kotak Status Harian =====
Widget tidakTerisi(String number) {
  return Container(
    width: 60,
    height: 50,
    decoration: BoxDecoration(
      color: Colors.red.shade50,
      borderRadius: BorderRadius.circular(6),
    ),
    child: Stack(
      children: [
        Center(child: Text(number, style: TextStyle(fontSize: 18))),
        Positioned(right: 3, top: 3, child: Icon(Icons.close, size: 14, color: Colors.red)),
      ],
    ),
  );
}

Widget sudahTerisi(String number) {
  return Container(
    width: 60,
    height: 50,
    decoration: BoxDecoration(
      color: Colors.green.shade50,
      borderRadius: BorderRadius.circular(6),
    ),
    child: Stack(
      children: [
        Center(child: Text(number, style: TextStyle(fontSize: 18))),
        Positioned(right: 3, top: 3, child: Icon(Icons.check, size: 14, color: Colors.green)),
      ],
    ),
  );
}

Widget belumTerisi(String number) {
  return Container(
    width: 60,
    height: 50,
    decoration: BoxDecoration(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(6),
    ),
    child: Center(child: Text(number, style: TextStyle(fontSize: 18, color: Colors.black54))),
  );
}
