import 'package:flutter/material.dart';
import 'package:jurnalku_mobile/jurnal_pembiasaan.dart';
import 'package:jurnalku_mobile/login.dart';
import 'package:jurnalku_mobile/panduan.dart';
import 'package:jurnalku_mobile/panduanpengguna/catatan_sikap.dart';
import 'package:jurnalku_mobile/permintaan_saksi.dart';
import 'package:jurnalku_mobile/profile.dart';
import 'package:jurnalku_mobile/progress_belajar.dart';
import 'package:jurnalku_mobile/search.dart';
import 'package:jurnalku_mobile/settings.dart';
import 'package:jurnalku_mobile/table_catatansikap/catatan_sikap.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  Widget _menuItem({
  required IconData icon,
  required String title,
  required String subtitle,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
            color: Color(0xffE8F0FF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: Color(0xff4A75FF), size: 22),
        ),

        SizedBox(width: 14),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 13,
                  height: 1.3,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),

        Icon(Icons.chevron_right, color: Colors.black26),
      ],
    ),
  );
}

Widget _divider() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 16),
    height: 1,
    color: Colors.black12,
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
    child: ListView(
      children: [
        ListTile(title: Text("Dashboard"), onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));},),
        Divider(color: Colors.grey[400]),
        ListTile(title: Text("Profile"), onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));}),
        Divider(color: Colors.grey[400]),
        ListTile(title: Text("Search"), onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => DirektoriSiswaPage()));}),
        Divider(color: Colors.grey[400]),
        ListTile(title: Text("Jurnal Pembiasaan"), onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => JurnalPembiasaanPage()));}),
        Divider(color: Colors.grey[400]),
        ListTile(title: Text("Permintaan Saksi"), onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => PermintaanSaksi()));}),
        Divider(color: Colors.grey[400]),
        ListTile(title: Text("Progress"), onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ProgressBelajar()));}),
        Divider(color: Colors.grey[400]),
        ListTile(title: Text("Catatan Sikap"), onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => CatatanSikapPage()));}),
        Divider(color: Colors.grey[400]),
        ListTile(title: Text("Panduan Pengguna"), onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => PanduanPengguna()));}),
        Divider(color: Colors.grey[400]),
        ListTile(title: Text("Pengaturan Akun"), onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));}),
        Divider(color: Colors.grey[400]),
        ListTile(title: Text("Log Out"), onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));}),
      ],
    ),
  ),
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
                children:  [
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff0C4CC9),
                    Color(0xff0A3CA6),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Selamat Datang di Jurnalku",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Solusi cerdas untuk memantau perkembangan kompetensi siswa secara efektif",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.85),
                      fontSize: 14,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Color(0xFF0C4CC9),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Apa itu Jurnalku?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif, terstruktur, dan real-time. Dengan fitur lengkap, proses pemantauan menjadi lebih mudah dan transparan.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ),

             SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.school, 
                      size: 28, 
                      color: Color(0xff0C4CC9)),
                    SizedBox(height: 10),
                    Text(
                      "Dirancang Khusus",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10),
                  
                    Text(
                      "Memenuhi kebutuhan spesifik sekolah kami dengan fokus pada kemajuan siswa",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.school_rounded, 
                      size: 28, 
                      color: Color(0xff0C4CC9)),
                    SizedBox(height: 10),

                    Text(
                      "Dirancang Khusus",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    SizedBox(height: 6),
                    Text(
                      "Memenuhi kebutuhan spesifik sekolah kami dengan fokus pada kemajuan siswa",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.school_rounded, 
                      size: 28, 
                      color: Color(0xff0C4CC9)),
                    SizedBox(height: 10),
                    Text(
                      "Dirancang Khusus",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10),
                  
                    Text(
                      "Memenuhi kebutuhan spesifik sekolah kami dengan fokus pada kemajuan siswa",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "MENU APLIKASI",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[700],
                ),
              ),
            ),

            SizedBox(height: 14),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
                      },
                      child: _menuItem(
                        icon: Icons.person_outline,
                        title: "Profil",
                        subtitle: "Lihat dan kelola profilmu di sini.",
                      ),
                    ),
                    _divider(),
                    _menuItem(
                      icon: Icons.folder_open_outlined,
                      title: "Portofolio",
                      subtitle: "Lihat dan kelola portofolio kompetensimu di sini.",
                    ),
                    _divider(),
                    _menuItem(
                      icon: Icons.verified_outlined,
                      title: "Sertifikat",
                      subtitle: "Lihat dan unduh sertifikat kompetensimu di sini.",
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const JurnalPembiasaanPage()));
                      },
                      child: _menuItem(
                        icon: Icons.book_outlined,
                        title: "Jurnal Pembiasaan",
                        subtitle: "Catat dan pantau kegiatan pembiasaan harianmu.",
                      ),
                    ),
                    _divider(),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const PermintaanSaksi()));
                      },
                      child: _menuItem(
                        icon: Icons.group_outlined,
                        title: "Permintaan Saksi",
                        subtitle: "Lihat teman yang mengajukan permintaan saksi.",
                      ),
                    ),
                    _divider(),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProgressBelajar()));
                      },
                      child: _menuItem(
                        icon: Icons.bar_chart_outlined,
                        title: "Progress",
                        subtitle: "Lihat kemajuan kompetensi dan pencapaian belajarmu.",
                      ),
                    ),
                    _divider(),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  CatatanSikapPage()));
                      },
                      child: _menuItem(
                        icon: Icons.warning_outlined,
                        title: "Catatan Sikap",
                        subtitle: "Lihat catatan sikap dan perilaku dari guru.",
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "STATISTIKA KOMPETENSI",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[700],
                ),
              ),
            ),
            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Materi Diselesaikan",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "2",
                          style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(width: 6),
                            Text(
                              "Selesai",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.greenAccent,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xffF3F6FF),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.verified_outlined,
                        color: Colors.greenAccent,
                        size: 26,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pengajuan Pending",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(width: 6),
                            Text(
                              "Pending",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.pinkAccent,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xffF3F6FF),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.watch_later,
                        color: Colors.pinkAccent,
                        size: 26,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Materi Hari Ini",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(width: 6),
                            Text(
                              "Hari Ini",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.blue,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xffF3F6FF),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.calendar_month,
                        color: Colors.blue,
                        size: 26,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Materi Revisi",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(width: 6),
                            Text(
                              "Revisi",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.purple,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xffF3F6FF),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.refresh_outlined,
                        color: Colors.purple,
                        size: 26,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 22),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Progress Akademik",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black87,
                      ),
                    ),

                    SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Color(0xff3D5CFF),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text("Selesai",
                            style: TextStyle(fontSize: 14, color: Colors.black87),
                          ),
                        ),
                        Text("2", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                      ],
                    ),

                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Color(0xff5AA2FF),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text("Pending",
                            style: TextStyle(fontSize: 14, color: Colors.black87),
                          ),
                        ),
                        Text("1", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                      ],
                    ),

                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Color(0xff7BD3FF),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text("Belum",
                            style: TextStyle(fontSize: 14, color: Colors.black87),
                          ),
                        ),
                        Text("0", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                      ],
                    ),

                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Color(0xff53D8C9),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text("Hari Ini",
                            style: TextStyle(fontSize: 14, color: Colors.black87),
                          ),
                        ),
                        Text("0", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 22),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Lihat Progress Kamu",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff3366FF),
                          ),
                        ),
                        Icon(Icons.arrow_right_alt, color: Color(0xff3366FF)),
                      ],
                    ),

                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Instalasi Postman",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: Color(0xffD9F7E8),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "Approved",
                            style: TextStyle(
                              color: Color(0xff23A766),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 6),
                    Divider(color: Colors.black12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Implementasi Penggunaan Postman",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: Color(0xffD9F7E8),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "Approved",
                            style: TextStyle(
                              color: Color(0xff23A766),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 6),
                    Divider(color: Colors.black12),

                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Lihat semua Kompetensi",
                          style: TextStyle(
                            color: Color(0xff3366FF),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 3),
                        Icon(Icons.arrow_right_alt, color: Color(0xff3366FF)),
                      ],
                    )
                  ],
                ),
              ),
            ),

          SizedBox(height: 40),
          ],
        ),
      ),

    );
  }
}