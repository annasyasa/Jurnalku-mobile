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
        "catatanSiswa": "Terima kasih pak, akan saya tingkatkan lagi!",
        "subtitle": "Update Terbaru",
      },
      {
        "kompetensi": "Database MySQL",
        "guru": "Ibu Pengajar S.T",
        "tanggal": "20 Oktober 2025",
        "status": "Proses",
        "catatanGuru": "Perlu diperbaiki pada bagian relasi tabel.",
        "catatanSiswa": "Baik bu, segera saya revisi.",
        "subtitle": "Add Card",
      },
    ],
    "19 Oktober 2025": [
      {
        "kompetensi": "Desain UI/UX",
        "guru": "Bapak Desainer UI",
        "tanggal": "19 Oktober 2025",
        "status": "Selesai",
        "catatanGuru": "Desain sangat baik dan konsisten.",
        "catatanSiswa": "Siap pak, terima kasih.",
        "subtitle": "Conflik",
      },
      {
        "kompetensi": "Testing Aplikasi",
        "guru": "Ibu QA S.Pd",
        "tanggal": "19 Oktober 2025",
        "status": "Proses",
        "catatanGuru": "Beberapa bug masih ditemukan.",
        "catatanSiswa": "Baik bu, akan saya perbaiki.",
        "subtitle": "Update leading",
      },
    ],
    "18 Oktober 2025": [
      {
        "kompetensi": "Networking Basic",
        "guru": "Bapak Jaringan S.T",
        "tanggal": "18 Oktober 2025",
        "status": "Selesai",
        "catatanGuru": "Pengerjaan sangat rapi.",
        "catatanSiswa": "Terima kasih pak!",
        "subtitle": "Update Terbaru",
      },
      {
        "kompetensi": "Pengujian Sistem",
        "guru": "Ibu QA",
        "tanggal": "18 Oktober 2025",
        "status": "Belum Dikerjakan",
        "catatanGuru": "Segera dikerjakan ya.",
        "catatanSiswa": "Baik bu, segera saya kerjakan.",
        "subtitle": "Update leading",
      },
    ],
    "17 Oktober 2025": [
      {
        "kompetensi": "HTML & CSS",
        "guru": "Bapak Developer",
        "tanggal": "17 Oktober 2025",
        "status": "Selesai",
        "catatanGuru": "Struktur sudah bagus.",
        "catatanSiswa": "Siap pak!",
        "subtitle": "conflick",
      },
      {
        "kompetensi": "JavaScript Basic",
        "guru": "Bapak Developer",
        "tanggal": "17 Oktober 2025",
        "status": "Progres",
        "catatanGuru": "Masih ada error, perbaiki ya.",
        "catatanSiswa": "Baik pak, segera diperbaiki.",
        "subtitle": "add card",
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile Apps", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 1,
      ),

    body: ListView(
        padding: const EdgeInsets.all(16),
        children: dummyData.entries.toList().asMap().entries.map((entry) {
          int index = entry.key;
          String tanggal = entry.value.key; 
          List<Map<String, String>> items = entry.value.value;

          return _buildDateSection(tanggal, items, index + 1);
        }).toList(),
      ),
    );
  }

  Widget _buildDateSection(String tanggal, List<Map<String, String>> items , int nomor) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),

      child: ExpansionTile(
        leading: CircleAvatar(
          child: Text(nomor.toString()),
        ),
        title: Text(
          tanggal,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(items.first["subtitle"] ?? "-"),
        children: items.map((item) => _buildItemDetail(item)).toList(),
      ),
    );
  }

  Widget _buildItemDetail(Map<String, String> item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _infoRow("Kompetensi", item["kompetensi"]!),
          _infoRow("Guru", item["guru"]!),
          _infoRow("Tanggal", item["tanggal"]!),
          _infoRow("Status", item["status"]!, highlight: true),
          _infoRow("Catatan Guru", item["catatanGuru"]!),
          _infoRow("Catatan Siswa", item["catatanSiswa"]!),
          const Divider(),
        ],
      ),
    );
  }

  Widget _infoRow(String label, String value, {bool highlight = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 120, child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold))),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
