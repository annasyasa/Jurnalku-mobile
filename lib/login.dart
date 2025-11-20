import 'package:flutter/material.dart';
import 'package:jurnalku_mobile/progress_belajar.dart';
import 'package:jurnalku_mobile/settings.dart';
import 'package:jurnalku_mobile/panduan.dart';
import 'package:jurnalku_mobile/permintaan_saksi.dart';
import 'package:jurnalku_mobile/search.dart';
import 'package:jurnalku_mobile/catatan_sikap.dart';
import 'package:jurnalku_mobile/jurnal_pembiasaan.dart';


class Login extends StatelessWidget {
  const Login({super.key});

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
                    "PPLG XII-3",
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

            PopupMenuButton(
              icon: const Icon(Icons.more_vert, color: Colors.black),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: const Text("Panduan"),
                  onTap: () {
                    Future.delayed(Duration.zero, () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const PanduanPengguna()),
                      );
                    });
                  },
                ),
                PopupMenuItem(
                  child: const Text("Setting"),
                  onTap: () {
                    Future.delayed(Duration.zero, () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const SettingsPage()),
                      );
                    });
                  },
                ),
                PopupMenuItem(
                  child: const Text("Permintaan Saksi"),
                  onTap: () {
                    Future.delayed(Duration.zero, () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const PermintaanSaksi()),
                      );
                    });
                  },
                ),
                PopupMenuItem(
                  child: const Text("Progress"),
                  onTap: () {
                    Future.delayed(Duration.zero, () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const ProgressBelajar()),
                      );
                    });
                  },
                ),
                PopupMenuItem(
                  child: const Text("Catatan Sikap"),
                  onTap: () {
                    Future.delayed(Duration.zero, () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const CatatanSikapPage()),
                      );
                    });
                  },
                ),
                PopupMenuItem(
                  child: const Text("Search"),
                  onTap: () {
                    Future.delayed(Duration.zero, () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const DirektoriSiswaPage()),
                      );
                    });
                  },
                ),
                PopupMenuItem(
                  child: const Text("Jurnal Pembiasaan"),
                  onTap: () {
                    Future.delayed(Duration.zero, () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const JurnalPembiasaanPage()),
                      );
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),

      body: const Center(
        child: Text("Klik menu ⋮ untuk pindah halaman"),
      ),
    );
  }
}
