import 'package:flutter/material.dart';
import 'package:jurnalku_mobile/login.dart';
import 'package:jurnalku_mobile/progress_belajar.dart';
import 'package:jurnalku_mobile/settings.dart';
import 'package:jurnalku_mobile/panduan.dart';
import 'package:jurnalku_mobile/permintaan_saksi.dart';
import 'package:jurnalku_mobile/search.dart';
import 'package:jurnalku_mobile/catatan_sikap.dart';
import 'package:jurnalku_mobile/jurnal_pembiasaan.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue.shade600),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 32),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Mochamad Reivaldy Zaen",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    "PPLG XII-3",
                    style: TextStyle(fontSize: 13, color: Colors.white70),
                  ),
                ],
              ),
            ),

            _buildMenu(context, Icons.menu_book, "Panduan", const PanduanPengguna()),
            _buildMenu(context, Icons.settings, "Setting", const SettingsPage()),
            _buildMenu(context, Icons.account_box, "Permintaan Saksi", const PermintaanSaksi()),
            _buildMenu(context, Icons.bar_chart, "Progress", const ProgressBelajar()),
            _buildMenu(context, Icons.note_alt, "Catatan Sikap", CatatanSikapPage()),
            _buildMenu(context, Icons.search, "Search", const DirektoriSiswaPage()),
            _buildMenu(context, Icons.library_books, "Jurnal Pembiasaan", const JurnalPembiasaanPage()),
            const Divider(),
            _buildMenu(context, Icons.logout, " Login", const Login()),
          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Row(
          children: [
            const SizedBox(width: 12),
          ],
        ),
      ),

      body: const Center(
        child: Text(" KLik Ini Bro (☰)"),
      ),
    );
  }

  Widget _buildMenu(BuildContext context, IconData icon, String label, Widget page) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      onTap: () {
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => page),
        );
      },
    );
  }
}
