import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jurnalku_mobile/jurnal_pembiasaan.dart';

class MengelolaPortofolio extends StatelessWidget {
 MengelolaPortofolio({super.key});

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
                      fontSize: 15,
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
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
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
              "Mengelola Portofolio",
               style: TextStyle(
               fontSize: 22,
               fontWeight: FontWeight.w700,
               color: Color(0xFF1C4780),
               ),
             ),

            SizedBox(height: 16),
            Text(
              " Panduan ini memberikan langkah-langkah untuk menambah, mengedit, dan menghapus portfolio siswa.",
              style: TextStyle(
                fontSize: 15,
                height: 1.5,
                color: Color(0xFF4B5563),
              ),
            ),

            SizedBox(height: 16),
            Text(
              "A. Menambah Portofolio Baru",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1C4780),
              ),
            ),

            SizedBox(height: 8),
              Text(
                "Berikut adalah langkah-langkah untuk menambahkan portfolio baru:",
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5,
                  color: Color(0xFF4B5563),
                ),
              ),

           SizedBox(height: 5),
           Padding(
            padding: const EdgeInsets.only(left: 8),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 15,
                  height: 1.6,
                  color: Color(0xFF4B5563),
                ),
                children: [
                  TextSpan(text: "1. Buka profil Anda (klik foto profil atau nama Anda), kemudian klik tab "),
                  TextSpan(
                    text: "Portofolio \n",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(text: "2. Klik tombol "),
                  TextSpan(
                    text: "+ Tambah Portfolio. \n",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(text: "3. Isi form yang muncul dengan detail berikut:\n"),
                  WidgetSpan(child: SizedBox(width: 20)),
                  TextSpan(
                    text: "• Judul Portfolio: ",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(text: "Nama project/portfolio (wajib, maks 255 karakter)\n"),
                  WidgetSpan(child: SizedBox(width: 20)),
                  TextSpan(
                    text: "• Deskripsi: ",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(text: "Penjelasan detail tentang project (wajib)\n"),
                  WidgetSpan(child: SizedBox(width: 20)),
                  TextSpan(
                    text: "• Durasi Pengerjaan ",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(text: "Waktu pengerjaan, contoh: \"3 bulan\", \"2 minggu\" (wajib, maks 255 karakter)\n"),
                  WidgetSpan(child: SizedBox(width: 20)),
                  TextSpan(
                    text: "• Link Portofolio ",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(text: "URL project jika ada (opsional, harus URL valid)\n"),
                  WidgetSpan(child: SizedBox(width: 20)),
                  TextSpan(
                    text: "• Gambar Portofolio ",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(text: "Screenshot atau foto project (opsional, maks 2MB)\n"),
                  TextSpan(text: "4. Klik tombol "),
                  TextSpan(
                    text: "Simpan",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(text: " untuk menyimpan portofolio."),
                ],
              ),
             ),
           ),

            SizedBox(height: 16),
            Text(
              "B. Mengedit Portofolio",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1C4780),
              ),
            ),

            SizedBox(height: 8),
              Text(
                "Berikut adalah langkah-langkah untuk mengedit portfolio: ",
                style: TextStyle(
                  fontSize: 15,
                  height: 1.6,
                  color: Color(0xFF4B5563),
                ),
              ),

            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.6,
                      color: Color(0xFF4B5563),
                    ),
                    children: [
                      TextSpan(text: "1. Temukan portfolio yang ingin diedit pada halaman Portfolio. \n"),
                      TextSpan(text: "2. Klik ikon "),
                      TextSpan(
                        text: "pensil (✏️)",
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(text: " pada card portfolio yang ingin diedit.\n"),
                      TextSpan(text: "3. Modal edit akan terbuka dengan data yang sudah terisi. \n"),
                      TextSpan(text: "4. Ubah data yang diperlukan sesuai kebutuhan. \n"),
                      TextSpan(text: "5. Klik tombol "),
                      TextSpan(
                        text: "Update",
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(text: " untuk menyimpan perubahan."),
                    ],
                  ),
                ),
            ),
            
            SizedBox(height: 16),
            Text(
              "C. Menghapus Portofolio",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1C4780),
              ),
            ),

            SizedBox(height: 10),
            Text(
              "Berikut adalah langkah-langkah untuk menghapus portfolio:",
              style: TextStyle(
                fontSize: 15,
                height: 1.6,
                color: Color(0xFF4B5563),
              ),
            ),

            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.6,
                      color: Color(0xFF4B5563),
                    ),
                    children: [
                      TextSpan(text: "1. Temukan portfolio yang ingin dihapus pada halaman Portfolio. \n"),
                      TextSpan(text: "2. Klik ikon "),
                      TextSpan(
                        text: "tempat sampah (🗑️)",
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(text: " pada card portfolio.\n"),
                      TextSpan(text: "3. Konfirmasi penghapusan akan muncul. \n"),
                      TextSpan(text: "4. Klik tombol "),
                      TextSpan(
                        text: "Ya, Hapus",
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(text: " untuk menghapus portofolio.\n"),
                    ],
                  ),
                ),
            ),

            SizedBox(height: 8),
            Text(
              "⚠️ Catatan Penting: Penghapusan portfolio bersifat permanen dan tidak dapat dibatalkan.",
                style: TextStyle(
                fontSize: 14,
                color: Colors.red,
               fontStyle: FontStyle.italic
              ),
            ),

            SizedBox(height: 16),
            Text(
              "D. Melihat Detail Portofolio",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1C4780),
              ),
            ),

            SizedBox(height: 8),
            Text(
              "Untuk melihat detail lengkap portfolio: ",
              style: TextStyle(
                fontSize: 15,
                height: 1.6,
                color: Color(0xFF4B5563),
              ),
            ),

            SizedBox(height: 5),
           Padding(
            padding: const EdgeInsets.only(left: 8),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 15,
                  height: 1.6,
                  color: Color(0xFF4B5563),
                ),
                children: [
                  TextSpan(text: "1. Klik tombol "),
                  TextSpan(
                    text: "Lihat Detail",
                    style: TextStyle(
                      color: Color(0xFF4B5563),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(text: " pada card portfolio.\n"),
                  TextSpan(text: "2. Halaman detail akan menampilkan informasi lengkap termasuk: \n"),
                  WidgetSpan(child: SizedBox(width: 16)),
                  TextSpan(text: "• Gambar portfolio (dapat diklik untuk preview ukuran penuh) \n"),
                  WidgetSpan(child: SizedBox(width: 16)),
                  TextSpan(text: "• Judul dan deskripsi lengkap \n"),
                  WidgetSpan(child: SizedBox(width: 16)),
                  TextSpan(text: "• Durasi pengerjaan \n"),
                  WidgetSpan(child: SizedBox(width: 16)),
                  TextSpan(text: "• Link portofolio \n"),
                  WidgetSpan(child: SizedBox(width: 16)),
                  TextSpan(text: "• Tanggal Dibuat \n"),
                  WidgetSpan(child: SizedBox(width: 16)),
                  TextSpan(text: "• Portfolio lainnya dari pemilik yang sama \n"),
                  TextSpan(text: "3. Anda dapat mengedit atau menghapus portfolio langsung dari halaman detail jika Anda adalah pemiliknya."),
                ],
              ),
            ),
          ),

            SizedBox(height: 16),
            Text(
              "E. Tips Portofolio yang Baik",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1C4780),
              ),
            ),

            SizedBox(height: 8),
            Text(
              "Untuk membuat portfolio yang berkualitas, perhatikan hal-hal berikut: ",
              style: TextStyle(
                fontSize: 15,
                height: 1.6,
                color: Color(0xFF4B5563),
              ),
            ),

            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.5,
                      color: Color(0xFF4B5563),
                    ),
                    children: [
                      TextSpan(text: "• Gunakan judul yang jelas dan menarik (maks 255 karakter) \n"),
                      TextSpan(text: "• Tulis deskripsi yang detail dan informatif - deskripsi dapat mengandung line break untuk memudahkan pembacaan \n"),
                      TextSpan(text: "• Isi durasi pengerjaan dengan jelas, contoh: \"2 minggu\", \"3 bulan\" \n"),
                      TextSpan(text: "• Sertakan link project yang valid jika tersedia online (GitHub, demo live, dll) \n"),
                      TextSpan(text: "• Upload gambar dengan kualitas baik (format: JPEG, PNG, JPG, GIF, maks 2MB) \n"),
                      TextSpan(text: "• Pastikan semua informasi akurat dan up-to-date \n"),
                    ],
                  ),
                ),
            ),

            SizedBox(height: 16),
            Text(
              "F. Troubleshooting",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1C4780),
              ),
            ),

            SizedBox(height: 8),
            Text(
              "Jika mengalami masalah saat mengelola portfolio:",
              style: TextStyle(
                fontSize: 15,
                height: 1.6,
                color: Color(0xFF4B5563)
              ),
            ),

            SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.6,
                      color: Color(0xFF4B5563),
                    ),
                    children: [
                      TextSpan(
                        text: "• Modal tidak terbuka: ",
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontWeight: FontWeight.w600,
                          height: 1.8,
                        ),
                      ),
                      TextSpan(text: "Refresh halaman dan coba lagi\n"),
                      TextSpan(
                        text: "• Error saat menyimpan: ",
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(text: "Periksa apakah semua field wajib sudah diisi dengan benar \n"),
                      TextSpan(
                        text: "• Gambar tidak terupload: ",
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(text: "Pastikan ukuran gambar tidak melebihi 2MB dan format yang didukung (JPG, PNG, GIF)\n"),
                      TextSpan(
                        text: "• Link tidak valid: ",
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(text: "Pastikan URL dimulai dengan http:// atau https:// \n"),
                      TextSpan(
                        text: "• Deskripsi mengandung enter: ",
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(text: "Sistem sekarang mendukung line break, pastikan browser Anda sudah di-refresh jika masih mengalami masalah \n"),
                    ],
                  ),
                ),
              ),


          ],
        ),
      ),
    );
  }
}