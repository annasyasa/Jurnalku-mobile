import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jurnalku_mobile/jurnal_pembiasaan.dart';

class KelengkapanProfile extends StatelessWidget {
 KelengkapanProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(Icons.home, color: Color(0xFF1C4780)),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Mochamad Reivaldy Zaen",
                    style: TextStyle(
                      color: Color(0xFF1C4780),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "PPLG XII-3",
                    style: TextStyle(color: Color(0xFF1C4780), fontSize: 12),
                  ),
                ],
              ),
            ),
           SizedBox(width: 10),
           CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xFF1C4780),
              child: Icon(Icons.person, color: Colors.white),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
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
            
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.menu_book_outlined, color: Color(0xFF1C4780), size: 28),
                SizedBox(width: 8),
                Text(
                  "Panduan Penggunaan",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1C4780),
                  ),
                ),
              ],
            ),
            Text(
              "Kelengkapan Profile",
               style: TextStyle(
               fontSize: 22,
               fontWeight: FontWeight.w700,
               color: Color(0xFF1C4780),
               ),
             ),

             SizedBox(height: 14),
            Text(
              "Panduan lengkap untuk melengkapi profil siswa dengan mengunggah dokumen penting dan menambahkan informasi media sosial.",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 10),
            Text(
              "Untuk melengkapi profil Anda, klik nama/foto profil Anda di bagian atas halaman untuk membuka halaman profil.",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 20),
            Text(
              "A. Mengunggah Dokumen",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1C4780),
              ),
            ),

            SizedBox(height: 12),
            Text(
              "Di halaman profil Anda, scroll ke bawah hingga menemukan bagian 'Dokumen'.",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 16),
            Text(
              "1. Upload CV (Curriculum Vitae)",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),

            SizedBox(height: 6),
            Text(
              "• Klik tombol \"Upload CV\" pada bagian Curriculum Vitae\n"
              "• Pilih file CV Anda (format: PDF, DOC, DOCX, maksimal 4MB)\n"
              "• File akan otomatis terupload setelah dipilih",
              style: TextStyle(fontSize: 16, height: 1.6),
            ),

            SizedBox(height: 16),
            Text(
              "2. Upload Kartu Pelajar",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),

            SizedBox(height: 6),

            Text(
              "• Klik tombol \"Upload Kartu Pelajar\" pada bagian Kartu Pelajar\n"
              "• Pilih foto/scan kartu pelajar Anda (format: PDF, JPG, PNG, maksimal 2MB)\n"
              "• File akan otomatis terupload setelah dipilih\n\n"
              "*Kartu pelajar hanya dapat dilihat oleh Anda dan guru",
              style: TextStyle(
                fontSize: 16,
                height: 1.6,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 20),
            Text(
              "B. Mengelola Media Sosial",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1C4780),
              ),
            ),

            SizedBox(height: 12),
            Text(
              "Di bagian \"Media Sosial\" pada halaman profil Anda:",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 16),
            Text(
              "1. Klik tombol \"Edit\" di pojok kanan atas bagian Media Sosial.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            SizedBox(height: 8),
            Text(
              "2. Modal \"Edit Media Sosial\" akan terbuka",
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            SizedBox(height: 8),
            Text(
              "3. Isi informasi media sosial:",
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            SizedBox(height: 8),
            Text(
              "• Nama Platform: Masukkan nama platform (Instagram, LinkedIn, GitHub, dll.)\n"
              "• URL: Masukkan link lengkap profil media sosial Anda",
              style: TextStyle(fontSize: 16, height: 1.6),
            ),

            SizedBox(height: 8),
            Text(
              "4. Untuk menambah platform lain, klik \"Tambah Media Sosial\"",
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            SizedBox(height: 8),
            Text(
              "5. Klik \"Simpan Perubahan\" untuk menyimpan",
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            SizedBox(height: 20),
            Text(
              "C. Tips Penting",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1C4780),
              ),
            ),

            SizedBox(height: 16),
            Text(
              "• Pastikan file yang diupload tidak melebihi batas ukuran maksimal\n"
              "• Gunakan URL lengkap untuk media sosial (dimulai dengan https://)\n"
              "• Profil yang lengkap akan membantu guru dan teman-teman mengenal Anda lebih baik\n"
              "• Periksa kembali informasi yang dimasukkan sebelum menyimpan",

              style: TextStyle(fontSize: 16, height: 1.6),
            ),
          ],
        ),
      ),
    );
  }
}