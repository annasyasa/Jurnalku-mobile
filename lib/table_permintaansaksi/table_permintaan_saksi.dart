import 'package:flutter/material.dart';

class TablePermintaanSaksi extends StatelessWidget {
  const TablePermintaanSaksi({super.key});

  @override
  Widget build(BuildContext context) {
    // Data Dummy yang konsisten: Pengirim + Tanggal + Status
    final List<Map<String, String>> listPermintaan = [
      {
        "pengirim": "PT Inovasi Teknologi",
        "tanggal": "20 Oktober 2025",
        "status": "Menunggu Konfirmasi",
      },
      {
        "pengirim": "CV Kreatif Digital",
        "tanggal": "19 Oktober 2025",
        "status": "Menunggu Konfirmasi",
      },
      {
        "pengirim": "StartUp Maju Bersama",
        "tanggal": "18 Oktober 2025",
        "status": "Dikonfirmasi",
      },
      {
        "pengirim": "Dinas Kominfo Kota",
        "tanggal": "17 Oktober 2025",
        "status": "Ditolak",
      },
      {
        "pengirim": "Yayasan Pendidikan",
        "tanggal": "16 Oktober 2025",
        "status": "Selesai",
      },
      {
        "pengirim": "Bengkel Koding ID",
        "tanggal": "15 Oktober 2025",
        "status": "Selesai",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Permintaan Saksi",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              // Mapping data ke widget ExpansionTile
              // Logika ini menjamin setiap kartu HANYA memiliki data tanggal miliknya sendiri
              ...listPermintaan.map((data) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 12,
                        spreadRadius: 2,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Theme(
                      // Menghilangkan garis divider bawaan ExpansionTile
                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        tilePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        childrenPadding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        
                        // Judul Card (Pengirim) - UNIK per item
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Pengirim",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              data['pengirim']!,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                        
                        // Isi Expansion (Detail) - UNIK per item (Hanya data tanggal item ini)
                        children: [
                          // Divider Pertama
                          const Divider(height: 24, thickness: 1, color: Color(0xFFEEEEEE)),
                          
                          // Bagian Tanggal
                          SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Tanggal Pelaksanaan",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  data['tanggal']!, // Hanya menampilkan tanggal dari item ini
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Divider Kedua
                          const Divider(height: 24, thickness: 1, color: Color(0xFFEEEEEE)),
                          
                          // Bagian Konfirmasi / Status (Text Biasa)
                          SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Status Konfirmasi",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  data['status']!, // Hanya menampilkan status dari item ini
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    // Memberikan warna berbeda sesuai status
                                    color: data['status'] == "Ditolak" 
                                        ? Colors.red 
                                        : (data['status'] == "Selesai" || data['status'] == "Dikonfirmasi" ? Colors.green : Colors.black87),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}