import 'package:flutter/material.dart';

class MobileApps extends StatelessWidget {
  const MobileApps({super.key});

  final Map<String, List<Map<String, String>>> dummyData = const {
    "20 Oktober 2025": [
      {
        "kompetensi": "Pemrograman Mobile Android",
        "guru": "Bapak Pengajar S.Kom",
        "tanggal": "20 Oktober 2025",
        "status": "Selesai",
        "catatanGuru": "UI sudah rapi, fitur lengkap. Bagus!",
        "catatanSiswa": "Terima kasih pak, akan saya tingkatkan lagi!"
      },
      {
        "kompetensi": "Database MySQL",
        "guru": "Ibu Pengajar S.T",
        "tanggal": "20 Oktober 2025",
        "status": "Proses",
        "catatanGuru": "Perlu diperbaiki pada bagian relasi tabel.",
        "catatanSiswa": "Baik bu, segera saya revisi."
      }
    ],
    "19 Oktober 2025": [
      {
        "kompetensi": "Desain UI/UX",
        "guru": "Bapak Desainer UI",
        "tanggal": "19 Oktober 2025",
        "status": "Selesai",
        "catatanGuru": "Desain sangat baik dan konsisten.",
        "catatanSiswa": "Siap pak, terima kasih."
      },
      {
        "kompetensi": "Testing Aplikasi",
        "guru": "Ibu QA S.Pd",
        "tanggal": "19 Oktober 2025",
        "status": "Proses",
        "catatanGuru": "Beberapa bug masih ditemukan.",
        "catatanSiswa": "Baik bu, akan saya perbaiki."
      }
    ],
    "18 Oktober 2025": [
      {
        "kompetensi": "Networking Basic",
        "guru": "Bapak Jaringan S.T",
        "tanggal": "18 Oktober 2025",
        "status": "Selesai",
        "catatanGuru": "Pengerjaan sangat rapi.",
        "catatanSiswa": "Terima kasih pak!"
      },
      {
        "kompetensi": "Pengujian Sistem",
        "guru": "Ibu QA",
        "tanggal": "18 Oktober 2025",
        "status": "Belum Dikerjakan",
        "catatanGuru": "Segera dikerjakan ya.",
        "catatanSiswa": "Baik bu, segera saya kerjakan."
      }
    ],
    "17 Oktober 2025": [
      {
        "kompetensi": "HTML & CSS",
        "guru": "Bapak Developer",
        "tanggal": "17 Oktober 2025",
        "status": "Selesai",
        "catatanGuru": "Struktur sudah bagus.",
        "catatanSiswa": "Siap pak!"
      },
      {
        "kompetensi": "JavaScript Basic",
        "guru": "Bapak Developer",
        "tanggal": "17 Oktober 2025",
        "status": "Progres",
        "catatanGuru": "Masih ada error, perbaiki ya.",
        "catatanSiswa": "Baik pak, segera diperbaiki."
      }
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Icon(Icons.home, color: Colors.black),
            const SizedBox(width: 12),
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
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                "Mobile Apps",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              ...dummyData.entries.map(
                (entry) => Column(
                  children: [
                    _buildTile(entry.key, entry.value),
                    const SizedBox(height: 10),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTile(String title, List<Map<String, String>> items) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ExpansionTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        childrenPadding: EdgeInsets.zero,
        children: items.map((item) {
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDetail("Kompetensi", item["kompetensi"]!),
                _buildDetail("Guru", item["guru"]!),
                _buildDetail("Tanggal", item["tanggal"]!),
                _buildDetail("Status", item["status"]!, highlight: true),
                _buildDetail("Catatan Guru", item["catatanGuru"]!),
                _buildDetail("Catatan Siswa", item["catatanSiswa"]!),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildDetail(String label, String value, {bool highlight = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 120, child: Text(label, style: const TextStyle(fontWeight: FontWeight.w600))),
          Expanded(
            child: Text(
              value,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
