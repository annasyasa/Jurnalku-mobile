import 'package:flutter/material.dart';
import 'package:jurnalku_mobile/panduan.dart';

import 'permintaan_saksi.dart';

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

            const CircleAvatar(
              radius: 16,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
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
                // PopupMenuItem(
                //   child: const Text("Setting"),
                //   onTap: () {
                //     Future.delayed(Duration.zero, () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(builder: (_) => const Setting()),
                //       );
                //     });
                //   },
                // ),
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
