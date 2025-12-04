import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku_mobile/table_progress/gim.dart';
import 'package:jurnalku_mobile/table_progress/mobile_apps.dart';
import 'package:jurnalku_mobile/table_progress/project_work.dart';
import 'package:jurnalku_mobile/table_progress/ukk.dart';

class ProgressBelajar extends StatelessWidget {
  const ProgressBelajar({super.key});

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
            const SizedBox(width: 10),
            const CircleAvatar(
              radius: 16,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Progress Belajar",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                "Pantau perkembangan kompetensi dan materi pembelajaran anda",
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFEAF3FF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Selasa, 18 November 2025',
                  style: TextStyle(
                    color: Color(0xFF2574FF),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Pengajuan",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "1",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.circle, size: 8, color: Colors.blue),
                              SizedBox(width: 6),
                              Text(
                                "Semua status",
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFE8F3FF),
                      ),
                      child: Icon(
                        Icons.check_circle_outline,
                        color: Color(0xFF2F80ED),
                        size: 26,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Halaman ini",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "0",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.circle, size: 8, color: Colors.green),
                              SizedBox(width: 6),
                              Text(
                                "Data ditampilkan",
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Colors.green,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFE8F3FF),
                      ),
                      child: Icon(
                        Icons.calendar_month,
                        color: Colors.green,
                        size: 26,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Status Pending",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "0",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.deepOrange,
                              ),
                              SizedBox(width: 6),
                              Text(
                                "Perlu validasi",
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFE8F3FF),
                      ),
                      child: Icon(
                        Icons.access_time,
                        color: Colors.deepOrange,
                        size: 26,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total halaman",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "1",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 8,
                                color: Color(0xFF9333EA),
                              ),
                              SizedBox(width: 6),
                              Text(
                                "Navigasi tersedia",
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Color(0xFF9333EA),
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.purple.withOpacity(0.15),
                      ),
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Theme(
                  data: Theme.of(
                    context,
                  ).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    tilePadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    title: Text(
                      "Project Work",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      "Kompetensi dan materi pembelajaran",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          bottom: 20,
                        ),
                        child: Column(
                          children: [
                            Divider(color: Colors.grey[300]),
                            SizedBox(height: 10),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Kompetensi",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Pemrograman Mobile Android",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Guru",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Bapak Pengajar S.Kom",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Tanggal",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "20 Oktober 2025",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Status",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "Selesai",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Catatan Guru",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Tugas dikerjakan dengan sangat baik, UI rapi.",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Catatan Siswa",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Siap pak, akan saya tingkatkan lagi.",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProjectWork(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Lihat Detail ",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Theme(
                  data: Theme.of(
                    context,
                  ).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    tilePadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    title: Text(
                      "Mobile Apps",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      "Kompetensi dan materi pembelajaran",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          bottom: 20,
                        ),
                        child: Column(
                          children: [
                            Divider(color: Colors.grey[300]),
                            SizedBox(height: 10),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Kompetensi",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Pemrograman Mobile Android",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Guru",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Bapak Pengajar S.Kom",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Tanggal",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "20 Oktober 2025",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Status",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "Selesai",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Catatan Guru",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Tugas dikerjakan dengan sangat baik, UI rapi.",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Catatan Siswa",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Siap pak, akan saya tingkatkan lagi.",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MobileApps(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Lihat Detail ",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Theme(
                  data: Theme.of(
                    context,
                  ).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    tilePadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    title: Text(
                      "UKK (Uji Kompetensi Keahlian)",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      "Kompetensi dan materi pembelajaran",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          bottom: 20,
                        ),
                        child: Column(
                          children: [
                            Divider(color: Colors.grey[300]),
                            SizedBox(height: 10),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Kompetensi",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Pemrograman Mobile Android",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Guru",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Bapak Pengajar S.Kom",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Tanggal",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "20 Oktober 2025",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Status",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "Selesai",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Catatan Guru",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Tugas dikerjakan dengan sangat baik, UI rapi.",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Catatan Siswa",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Siap pak, akan saya tingkatkan lagi.",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Ukk(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Lihat Detail ",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Theme(
                  data: Theme.of(
                    context,
                  ).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    tilePadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    title: Text(
                      "GIM",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      "Kompetensi dan materi pembelajaran",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          bottom: 20,
                        ),
                        child: Column(
                          children: [
                            Divider(color: Colors.grey[300]),
                            SizedBox(height: 10),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Kompetensi",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Pemrograman Mobile Android",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Guru",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Bapak Pengajar S.Kom",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Tanggal",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "20 Oktober 2025",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Status",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "Selesai",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Catatan Guru",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Tugas dikerjakan dengan sangat baik, UI rapi.",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Catatan Siswa",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Siap pak, akan saya tingkatkan lagi.",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Gim(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Lihat Detail ",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
