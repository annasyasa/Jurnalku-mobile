import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jurnalku_mobile/jurnal_pembiasaan2.dart';

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
                color:Color(0xFF4B5563),
              ),
            ),

            SizedBox(height: 10),
            Text(
              "Untuk melengkapi profil Anda, klik nama/foto profil Anda di bagian atas halaman untuk membuka halaman profil.",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color:Color(0xFF4B5563),
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
                color:Color(0xFF4B5563),
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
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 16, height: 1.6, color:Color(0xFF4B5563)),
                children: [
                  WidgetSpan(child: SizedBox(width: 16)),
                  TextSpan(text: "• Klik tombol "),
                  TextSpan(
                    text: "\"Upload CV\"",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(text: " pada bagian Curriculum Vitae\n"),

                  WidgetSpan(child: SizedBox(width: 16)),
                  TextSpan(text: "• Pilih file CV Anda (format: PDF, DOC, DOCX, maksimal 4MB)\n"),

                  WidgetSpan(child: SizedBox(width: 16)),
                  TextSpan(text: "• File akan otomatis terupload setelah dipilih"),
                ],
              ),
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
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 16, height: 1.6, color:Color(0xFF4B5563)),
                children: [
                  WidgetSpan(child: SizedBox(width: 16)),
                  TextSpan(text: "• Klik tombol "),
                  TextSpan(
                    text: "\"Upload Kartu Pelajar\"",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(text: " pada bagian Kartu Pelajar\n"),

                  WidgetSpan(child: SizedBox(width: 16)),
                  TextSpan(text: "• Pilih foto/scan kartu pelajar Anda (format: PDF, JPG, PNG, maksimal 2MB)\n"),

                  WidgetSpan(child: SizedBox(width: 16)),
                  TextSpan(text: "• File akan otomatis terupload setelah dipilih\n\n"),

                  WidgetSpan(child: SizedBox(width: 16)),
                  TextSpan(
                    text: "*Kartu pelajar hanya dapat dilihat oleh Anda dan guru",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
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
                color:Color(0xFF4B5563),
              ),
            ),

            SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                    color:Color(0xFF4B5563),
                  ),
                  children: [
                    TextSpan(text: "1. Klik tombol "),
                    TextSpan(
                      text: "\"Edit\" ",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    TextSpan(text: "di pojok kanan atas bagian Media Sosial.\n"),
                    TextSpan(text: "2. Modal "),
                    TextSpan(
                      text: "\"Edit Media Sosial\" ",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    TextSpan(text: "akan terbuka.\n"),
                    TextSpan(text: "3. Isi informasi media sosial:\n"),
                    WidgetSpan(child: SizedBox(width: 8)),
                    TextSpan(
                      text: "• Nama Platform: ",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: "Masukkan nama platform (Instagram, LinkedIn, GitHub, dll.)\n",
                    ),
                    WidgetSpan(child: SizedBox(width: 8)),
                    TextSpan(
                      text: "• URL: ",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: "Masukkan link lengkap profil media sosial Anda\n",
                    ),
                    TextSpan(text: "4. Untuk menambah platform lain, klik "),
                    TextSpan(
                      text: "\"Tambah Media Sosial\"",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    TextSpan(text: ".\n"),
                    TextSpan(text: "5. Klik "),
                    TextSpan(
                      text: "\"Simpan Perubahan\" ",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    TextSpan(text: "untuk menyimpan."),
                  ],
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
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                "• Pastikan file yang diupload tidak melebihi batas ukuran maksimal\n"
                "• Gunakan URL lengkap untuk media sosial (dimulai dengan https://)\n"
                "• Profil yang lengkap akan membantu guru dan teman-teman mengenal Anda lebih baik\n"
                "• Periksa kembali informasi yang dimasukkan sebelum menyimpan",
              
                style: TextStyle(fontSize: 16, height: 1.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}