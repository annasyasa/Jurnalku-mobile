import 'package:flutter/material.dart';
import 'package:jurnalku_mobile/table_jurnalpembiasaan/table_jurnal_pembiasaan.dart';
import 'package:jurnalku_mobile/table_permintaansaksi/table_permintaan_saksi.dart';

class JurnalPembiasaanPage extends StatefulWidget {
  const JurnalPembiasaanPage({super.key});

  @override
  State<JurnalPembiasaanPage> createState() => _JurnalPembiasaanPageState();
}

class _JurnalPembiasaanPageState extends State<JurnalPembiasaanPage> {
  // ===============================
  // == STATE UNTUK POIN ==========
  // ===============================
  Map<String, int> pointValues = {
    "(5) Mengerjakan project/update progress belajar": 0,
    "(1 - 5) Poin dari pertanyaan atau laporan materi": 0,
    "Jumlah poin minggu ini": 0,
    "Jumlah poin ceklist pembiasaan": 0,
    "Jumlah keseluruhan poin": 0,
  };

  int totalPoin = 0;

  void _updateTotal() {
    totalPoin = pointValues.values.reduce((a, b) => a + b);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(Icons.home, color: Color(0xFF1C4780)),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Mochamad Reivaldy Zaen",
                    style: TextStyle(
                      color: Color(0xFF1C4780),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "PPLG XII-3",
                    style: TextStyle(color: Color(0xFF1C4780), fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xFF1C4780),
              child: Icon(Icons.person, color: Colors.white),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Jurnal Pembiasaan",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 4),
            Text(
              "DESEMBER - 2025",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 20),

            // ===========================
            //   A. PEMBIASAAN HARIAN
            // ===========================
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TableJurnalPembiasaan(),
                ),
              ),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.grey,
                      spreadRadius: 0.5,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "A. Pembiasaan Harian",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            // ===========================
            //   B. PEKERJAAN (CUSTOM CARD)
            // ===========================
            Container(
              decoration: _cardStyle(),
              child: Theme(
                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  childrenPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  title: Text(
                    "B. Pekerjaan yang dilakukan",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  children: [
                    _buildWorkCard(
                      title: "Membuat UI Dashboard Absensi",
                      date: "2 Desember 2025",
                      witness: "Pak Deni",
                    ),
                    _buildWorkCard(
                      title: "Menambahkan validasi login",
                      date: "3 Desember 2025",
                      witness: "Bu Siti",
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("+ Tambah Pekerjaan"),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            // ===========================
            //   C. MATERI (CUSTOM CARD)
            // ===========================
            Container(
              decoration: _cardStyle(),
              child: Theme(
                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  childrenPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  title: Text(
                    "C. Materi yang dipelajari",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  children: [
                    _buildMateriCard(
                      title: "Flutter Layout Basics",
                      date: "3 Desember 2025",
                      status: "Approved",
                      color: Colors.green,
                    ),
                    _buildMateriCard(
                      title: "State Management (Provider)",
                      date: "4 Desember 2025",
                      status: "Pending",
                      color: Colors.orange,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("+ Tambah Materi"),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            // ===========================
            //   D. POIN (CUSTOM CARD)
            // ===========================
            Container(
              decoration: _cardStyle(),
              child: Theme(
                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  childrenPadding: EdgeInsets.all(16),
                  title: Text(
                    "D. Poin",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  children: [
                    _buildPointTable(),
                  ],
                ),
              ),
            ),

            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  // STYLE CARD
  BoxDecoration _cardStyle() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          blurRadius: 2,
          color: Colors.grey,
          spreadRadius: 0.5,
          offset: Offset(0, 3),
        )
      ],
    );
  }

  // ================================
  // ===     TABEL POIN DROPDOWN ====
  // ================================
  Widget _buildPointTable() {
    return Table(
      border: TableBorder.all(color: Colors.grey.shade400),
      columnWidths: {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(1),
      },
      children: [
        _headerRow("Kategori Poin", "Nilai"),

        ...pointValues.keys.map((key) => _dropdownRow(key)).toList(),

        TableRow(
          decoration: BoxDecoration(color: Colors.grey.shade200),
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Total Poin",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "$totalPoin",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }

  TableRow _headerRow(String left, String right) {
    return TableRow(
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(left, style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(right, style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }

  TableRow _dropdownRow(String label) {
    return TableRow(
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(label),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: DropdownButton<int>(
            value: pointValues[label],
            isExpanded: true,
            items: List.generate(6, (i) => i)
                .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                .toList(),
            onChanged: (v) {
              setState(() {
                pointValues[label] = v!;
                _updateTotal();
              });
            },
          ),
        ),
      ],
    );
  }

  // ================================
  // ===   CARD PEKERJAAN (B)     ===
  // ================================
  Widget _buildWorkCard({
    required String title,
    required String date,
    required String witness,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 6,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style:
                  TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
          SizedBox(height: 6),
          Row(
            children: [
              Icon(Icons.calendar_today, size: 14),
              SizedBox(width: 6),
              Text(date, style: TextStyle(fontSize: 13)),
            ],
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.person, size: 14),
              SizedBox(width: 6),
              Text("Saksi: $witness", style: TextStyle(fontSize: 13)),
            ],
          ),
        ],
      ),
    );
  }

  // ================================
  // ===     CARD MATERI (C)      ===
  // ================================
  Widget _buildMateriCard({
    required String title,
    required String date,
    required String status,
    required Color color,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 6,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style:
                  TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
          SizedBox(height: 6),
          Row(
            children: [
              Icon(Icons.calendar_today, size: 14),
              SizedBox(width: 6),
              Text(date, style: TextStyle(fontSize: 13)),
            ],
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Text("Status: "),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
