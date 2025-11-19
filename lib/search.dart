import 'package:flutter/material.dart';

class DirektoriSiswaPage extends StatefulWidget {
  const DirektoriSiswaPage({super.key});

  @override
  State<DirektoriSiswaPage> createState() => _DirektoriSiswaPageState();
}

class _DirektoriSiswaPageState extends State<DirektoriSiswaPage> {
  List<Map<String, dynamic>> siswa = [
    {
      "name": "Mochamad Reivaldy Zaen",
      "nis": "12309548",
      "desc": "PPLG XII-3 | Cic 8",
      "portfolio": "2",
      "sertifikat": "13",
    },
    {
      "name": "Panca Prasetia",
      "nis": "12309480",
      "desc": "PPLG XII-3 | Cia bu wiji",
      "portfolio": "3",
      "sertifikat": "6",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF1D4C8D),
        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.menu_book_rounded, color: Colors.white),
            SizedBox(width: 10),
            Text(
              "Jurnalku",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                "Dashboard",
                style: TextStyle(
                  color: Color(0xFF1D4C8D),
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              "Direktori Siswa",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w800,
                color: Color(0xFF1D4C8D),
              ),
            ),
            SizedBox(height: 6),
            Text(
              "Temukan dan jelajahi profil siswa SMK Wikrama Bogor",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black87, fontSize: 14),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Cari nama siswa, NIS, atau rombel...",
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 12),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 13,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF1D4C8D),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Cari",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.filter_alt_outlined,
                          size: 20,
                          color: Colors.black87,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Filter Lanjutan",
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 20,
                          color: Colors.black87,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Menampilkan 1 - 12 dari 538 siswa",
              style: TextStyle(fontSize: 13, color: Colors.black87),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                itemCount: siswa.length,
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemBuilder: (context, index) {
                  final data = siswa[index];

                  return buildStudentCard(data);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStudentCard(Map<String, dynamic> data) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white, size: 28),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data["name"],
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  Text(
                    "${data["nis"]} | ${data["desc"]}",
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.folder, color: Color(0xFF1C4780)),
              SizedBox(width: 5),
              Text(
                "${data["portfolio"]} Portfolio",
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(width: 220),
              Icon(Icons.check_circle_outline, color: Color(0xFF1C4780)),
              Text(
                " ${data["sertifikat"]} Sertifikat",
                style: TextStyle(fontSize: 13),
              ),
            ],
          ),
          SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: Color(0xFF1D4C8D),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                Center(
                  child: Text(
                    "Lihat Detail",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
