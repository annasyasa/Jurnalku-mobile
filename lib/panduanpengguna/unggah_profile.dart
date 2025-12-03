import 'package:flutter/material.dart';

class UnggahProfile extends StatelessWidget {
  const UnggahProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Icon(Icons.arrow_back, color: Color(0xFF02398C), size: 20),
                  const SizedBox(width: 6),
                  Text(
                    "Kembali ke Panduan Penggunaan",
                    style: TextStyle(
                      color: Color(0xFF02398C),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.menu_book, color: Color(0xFF02398C), size: 30),
                const SizedBox(width: 10),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Panduan Penggunaan ',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF02398C),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'Unggah Profile',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF0F58CC),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),
            Text(
              "Halaman ini memberikan panduan langkah demi langkah untuk mengunggah foto profil pengguna. Pengguna diinstruksikan untuk mengakses bagian Pengaturan Akun, mengisi field Unggah Photo Profile, dan menyimpan perubahan yang telah dilakukan.",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Color(0xFF4B5563),
              ),
            ),

            const SizedBox(height: 24),
            Text(
              "1. Klik pada bagian Pengaturan Akun,",
              style: TextStyle(fontSize: 16, color: Color(0xFF4B5563)),
            ),
            const SizedBox(height: 8),
            Text(
              "2. lalu isi field Unggah Photo Profile",
              style: TextStyle(fontSize: 16, color: Color(0xFF4B5563)),
            ),
            const SizedBox(height: 8),
            Text(
              "3. Jika sudah, klik Simpan",
              style: TextStyle(fontSize: 16, color: Color(0xFF4B5563)),
            ),
          ],
        ),
      ),
    );
  }
}
