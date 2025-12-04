import 'package:flutter/material.dart';

class MengelolaSertifikatPage extends StatelessWidget {
  const MengelolaSertifikatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Padding(
          padding: EdgeInsets.only(
            left: 50,
            right: 24.0,
            top: 16.0,
            bottom: 24.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back, color: Color(0xFF02398C), size: 20),
                    SizedBox(width: 6),
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

              SizedBox(height: 20),

              // Title
              Row(
                children: [
                  Icon(Icons.menu_book, color: Color(0xFF02398C), size: 30),
                  SizedBox(width: 10),
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
                          text: 'Mengelola Sertifikat',
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

              SizedBox(height: 12),

              Text(
                'Panduan ini menyediakan langkah-langkah untuk menambah, mengedit, dan menghapus sertifikat siswa.',
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(height: 10),

              Text(
                'A. Menambahkan Sertifikat Baru',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10),

              Text(
                'Berikut langkah-langkah untuk menambahkan sertifikat baru:',
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(height: 16),

              // • Bullet 1
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: Text(
                      "Buka profil Anda (klik foto profil atau nama Anda), lalu klik tab Sertifikat.",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),

              // • Bullet 2
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(child: Text("Klik tombol + Tambahkan Sertifikat.")),
                ],
              ),
              SizedBox(height: 8),

              // • Bullet 3
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: Text(
                      "Isi formulir yang muncul dengan rincian berikut:",
                    ),
                  ),
                ],
              ),

              SizedBox(height: 8),

              // Sub bullets (indent)
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "• Judul: Nama sertifikat (wajib, maks. 255 karakter)",
                    ),
                    SizedBox(height: 4),
                    Text(
                      "• Deskripsi: Penjelasan tentang sertifikat (opsional, maks. 1000 karakter)",
                    ),
                    SizedBox(height: 4),
                    Text(
                      "• File Sertifikat: Unggah file sertifikat (wajib, maks. 10MB)",
                    ),
                  ],
                ),
              ),

              SizedBox(height: 12),

              // • Bullet 4
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: Text(
                      "Klik tombol Simpan untuk menyimpan sertifikat.",
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Text(
                '*Format file yang didukung: JPEG, PNG, JPG, GIF, WEBP, PDF, DOC, DOCX (maks. 10 MB).',
                style: TextStyle(color: Colors.blue),
              ),

              SizedBox(height: 15),

              Text(
                'B. Sertifikat Pengeditan',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10),

              Text(
                'Berikut langkah-langkah untuk mengedit sertifikat:',
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(height: 16),
              // • Bullet 1
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: Text(
                      "Temukan sertifikat yang ingin Anda edit pada tab Sertifikat di profil Anda.",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              // • Bullet 2
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: Text(
                      "Klik ikon pensil (✏️) pada kartu sertifikat yang ingin Anda edit.",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              // • Bullet 3
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: Text(
                      "Mode edit akan terbuka dengan data yang sudah terisi.",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              // • Bullet 4
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: Text(
                      "Ubah judul, deskripsi, atau ganti berkas jika diperlukan.",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              // • Bullet 5
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: Text(
                      "Klik tombol Perbarui untuk menyimpan perubahan.",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              Text(
                '*Jika Anda mengganti file, file lama akan terhapus secara otomatis.',
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(height: 15),

              // SECTION C
              Text(
                "C. Lihat Sertifikat",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 8),

              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Berikut cara melihat sertifikat berdasarkan jenis file:",
                    ),

                    SizedBox(height: 10),

                    // Bullet 1
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("• "),
                        Expanded(
                          child: Text(
                            "Berkas Gambar (JPG, PNG, GIF, WEBP):",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Klik pada gambar sertifikat untuk melihat pratinjau ukuran penuh",
                          ),
                          Text(
                            "Mode pratinjau akan terbuka dengan gambar yang dapat diperbesar",
                          ),
                          Text(
                            "Klik area gelap di luar gambar untuk menutup pratinjau",
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 12),

                    // Bullet 2
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("• "),
                        Expanded(
                          child: Text(
                            "Berkas PDF:",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Klik tombol “Pratinjau PDF” untuk melihat file PDF di mode pratinjau",
                          ),
                          Text("Gunakan tombol unduh untuk menyimpan file"),
                        ],
                      ),
                    ),

                    SizedBox(height: 12),

                    // Bullet 3
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("• "),
                        Expanded(
                          child: Text(
                            "Berkas Dokumen (DOC/DOCX): Klik tombol unduh untuk mengunduh berkas.",
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 12),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("• "),
                        Expanded(
                          child: Text(
                            "Sertifikat Anda dapat dilihat oleh guru dan pengunjung profil publik Anda.",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // SECTION D
              Text(
                "D. Menghapus Sertifikat",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 8),

              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("1. "),
                        Expanded(
                          child: Text(
                            "Temukan sertifikat yang ingin dihapus pada tab Sertifikat.",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("2. "),
                        Expanded(
                          child: Text(
                            "Klik ikon tempat sampah (🗑️) pada kartu sertifikat.",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("3. "),
                        Expanded(
                          child: Text(
                            "Konfirmasi penghapusan akan muncul, baca peringatannya.",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("4. "),
                        Expanded(
                          child: Text(
                            "Klik tombol Ya, Hapus untuk menghapus sertifikat.",
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10),

                    Text(
                      "⚠️  Catatan: Anda hanya dapat melihat, tidak dapat mengedit, atau menghapus catatan. Hanya guru yang dapat memperbarui status perubahan.",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Text(
                'E. Tips Sertifikat yang Baik',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),

              Text(
                'Untuk mengelola sertifikat dengan baik, perhatikan hal-hal berikut:',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              SizedBox(height: 12),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: Text(
                      "Gunakan riwayat ini untuk memahami kemajuan Anda dan area yang masih perlu ditingkatkan.",
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: Text(
                      "Sertakan nama lembaga/organisasi penerbit dalam judul atau deskripsi",
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: Text(
                      "Deskripsi dapat berisi jeda baris - gunakan untuk membuat poin yang mudah dibaca",
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: Text(
                      "Gunakan resolusi gambar yang cukup agar teks terlihat jelas (minimal lebar 1024px)",
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: Text(
                      "Format PDF lebih profesional dan universal untuk dokumen sertifikat",
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: Text(
                      "Tambahkan deskripsi untuk menjelaskan keterampilan atau pencapaian yang diperoleh",
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: Text(
                      "Pastikan file tidak melebihi batas ukuran 10MB",
                    ),
                  ),
                ],
              ),
              // Bagian F
              SizedBox(height: 20),

              Text(
                'F. Pemecahan Masalah',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),

              Text(
                'Jika Anda mengalami masalah saat mengelola sertifikat:',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              SizedBox(height: 12),

              // 1
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                        children: [
                          TextSpan(
                            text: "Modal tidak terbuka: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                "Pastikan JavaScript aktif di browser Anda, segarkan halaman dan coba lagi.",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              // 2
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                            children: [
                              TextSpan(
                                text: "Terjadi kesalahan saat mengunggah:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 6),
                        Padding(
                          padding: EdgeInsets.only(left: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Periksa ukuran file (maks. 10MB)"),
                              SizedBox(height: 4),
                              Text(
                                "Pastikan format file didukung (JPG, PNG, GIF, WEBP, PDF, DOC, DOCX)",
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Cobalah untuk mengompres file tersebut jika ukurannya terlalu besar",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              // 3
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                        children: [
                          TextSpan(
                            text: "Pratinjau tidak muncul: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                "Pastikan file sertifikat valid dan tidak rusak.",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              // 4
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                        children: [
                          TextSpan(
                            text: "PDF tidak dapat dibuka: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                "Gunakan browser modern (Chrome, Firefox, Edge) untuk melihat pratinjau PDF.",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              // 5
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• "),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                        children: [
                          TextSpan(
                            text: "Deskripsi dengan masalah enter: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                "Sistem sekarang mendukung jeda baris, segarkan browser jika masih ada masalah.",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
