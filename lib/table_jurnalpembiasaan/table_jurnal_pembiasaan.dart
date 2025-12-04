import 'package:flutter/material.dart';

class TableJurnalPembiasaan extends StatefulWidget {
  const TableJurnalPembiasaan({super.key});

  @override
  State<TableJurnalPembiasaan> createState() => _TableJurnalPembiasaanState();
}

class _TableJurnalPembiasaanState extends State<TableJurnalPembiasaan> {
  
  /// TOTAL ITEM CHECKLIST = 9 + 4 + 6 = 19 item
  /// Kita buat list boolean supaya checkbox bisa berubah
  List<bool> checklistValues = List.generate(19, (_) => false);

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
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "A. Pembiasaan Harian",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 12),

            buildHariTile(hari: "Senin, 17 November 2025"),
            buildHariTile(hari: "Selasa, 18 November 2025"),
            buildHariTile(hari: "Rabu, 19 November 2025"),
          ],
        ),
      ),
    );
  }

  int indexTracker = 0;

  Widget buildHariTile({required String hari}) {
    indexTracker = 0; // reset biar setiap hari mulai dari index 0

    return Container(
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: ExpansionTile(
        tilePadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        childrenPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        iconColor: Colors.black54,
        collapsedIconColor: Colors.black54,

        title: Text(
          hari,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),

        children: [
          kategoriTitle("Kesehatan dan Keselamatan Kerja"),

          checklistItem("Pencahayaan dan sirkulasi udara baik."),
          checklistItem("Duduk menggunakan meja dan kursi nyaman."),
          checklistItem("Punggung dan leher tegak, tidak bungkuk."),
          checklistItem("Posisi siku sejajar dengan meja/keyboard."),
          checklistItem("Posisi kaki tidak menggantung."),
          checklistItem("Posisi layar sejajar dengan mata."),
          checklistItem("Istirahat melihat jauh setiap 30 menit."),
          checklistItem("Stretching tiap 1 jam duduk."),
          checklistItem("Minum 200 ml air setiap 2 jam."),

          SizedBox(height: 16),
          kategoriTitle("Keselamatan"),

          checklistItem("Tidak ada benda berbahaya dekat area kerja."),
          checklistItem("Kabel tertata rapi dan tidak terbuka."),
          checklistItem("Stop kontak aman."),
          checklistItem("Peralatan kerja dirapikan setelah digunakan."),

          SizedBox(height: 16),
          kategoriTitle("Karakter"),

          checklistItem("Berdoa sebelum dan sesudah bekerja."),
          checklistItem("Melaksanakan sholat tepat waktu."),
          checklistItem("Berkomitmen pada tugas."),
          checklistItem("Berpartisipasi dalam tim."),
          checklistItem("Menghormati rekan kerja."),
          checklistItem("Mengulik materi untuk meningkatkan pemahaman."),
        ],
      ),
    );
  }

  Widget kategoriTitle(String text) {
    return Padding(
      padding: EdgeInsets.only(top: 6, bottom: 6),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 15,
        ),
      ),
    );
  }

  Widget checklistItem(String text) {
    int currentIndex = indexTracker;
    indexTracker++;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: checklistValues[currentIndex],
          onChanged: (value) {
            setState(() {
              checklistValues[currentIndex] = value!;
            });
          },
          visualDensity: VisualDensity.compact,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
          ),
        )
      ],
    );
  }
}
