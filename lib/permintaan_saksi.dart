import 'package:flutter/material.dart';

class PermintaanSaksi extends StatelessWidget {
  const PermintaanSaksi({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> listPermintaan = [
      {
        "pengirim": "PT Inovasi Teknologi",
        "subtitle": "pelis konfirm",
        "tanggal": "20 Oktober 2025",
        "status": "Menunggu Konfirmasi",
      },
      {
        "pengirim": "CV Kreatif Digital",
        "subtitle": "pelis konfirm",
        "tanggal": "19 Oktober 2025",
        "status": "Menunggu Konfirmasi",
      },
      {
        "pengirim": "StartUp Maju Bersama",
        "subtitle": "pelis konfirm",
        "tanggal": "18 Oktober 2025",
        "status": "Dikonfirmasi",
      },
      {
        "pengirim": "Dinas Kominfo Kota",
        "subtitle": "pelis konfirm",
        "tanggal": "17 Oktober 2025",
        "status": "Ditolak",
      },
      {
        "pengirim": "Yayasan Pendidikan",
        "subtitle": "pelis konfirm",
        "tanggal": "16 Oktober 2025",
        "status": "Selesai",
      },
      {
        "pengirim": "Bengkel Koding ID",
        "subtitle": "pelis konfirm",
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
                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        leading: Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                            color: Color(0xFFDCCBFF),
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "${listPermintaan.indexOf(data) + 1}",
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        tilePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        childrenPadding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,

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
                            Text(
                              data['subtitle']!,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),

                        children: [
                          const Divider(height: 24, thickness: 1, color: Color(0xFFEEEEEE)),
                          Column(
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
                                data['tanggal']!,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),

                          const Divider(height: 24, thickness: 1, color: Color(0xFFEEEEEE)),
                          Column(
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
                                data['status']!,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: data['status'] == "Ditolak"
                                      ? Colors.red
                                      : (data['status'] == "Selesai" || data['status'] == "Dikonfirmasi"
                                          ? Colors.green
                                          : Colors.black87),
                                ),
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 36,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      alignment: Alignment.center,
                                      child: const Text(
                                        "Terima",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),

                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Container(
                                      height: 36,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      alignment: Alignment.center,
                                      child: const Text(
                                        "Tolak",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
