import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jurnalku_mobile/jurnal_pembiasaan.dart';
import 'package:jurnalku_mobile/jurnal_pembiasaan2.dart';

class PanduanMengisiJurnal extends StatelessWidget {
 PanduanMengisiJurnal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(Icons.home, color: Color(0xFF02398C)),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
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
                    style: TextStyle(color: Color(0xFF02398C), fontSize: 12),
                  ),
                ],
              ),
            ),
           SizedBox(width: 10),
           CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xFF02398C),
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
              "Mengisi Jurnal",
               style: TextStyle(
               fontSize: 22,
               fontWeight: FontWeight.w700,
               color: Color(0xFF1C4780),
               ),
             ),

            SizedBox(height: 16),
            Text(
              " Panduan ini memberikan langkah-langkah rinci bagi siswa untuk mengisi jurnal harian, mengelola pekerjaan, mempelajari materi, dan mengelola poin yang diperoleh berdasarkan aktivitas yang dilakukan. ",
              style: TextStyle(
                fontSize: 15,
                height: 1.5,
                color:Color(0xFF4B5563),
              ),
            ),

            SizedBox(height: 16),
             Text(
              "A. Mengisi Jurnal harian",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1C4780),
              ),
             ),

            SizedBox(height: 12),
              Text(
                "Jurnal adalah catatan harian yang berisi kegiatan yang dilakukan oleh siswa. "
                "Jurnal ini dapat diisi oleh siswa setiap hari. Berikut langkah-langkah mengisi jurnal:",
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                  color:Color(0xFF4B5563),
                ),
              ),

            SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color:Color(0xFF4B5563),
                  ),
                  children: [
                    TextSpan(text: "1. Pilih menu "),
                    TextSpan(
                      text: "Jurnal Pembiasaan",
                      style: TextStyle(
                        color: Color(0xFF1C4780),
                        fontWeight: FontWeight.w600,
                      ),
                       recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JurnalPembiasaanPage(), 
                          ),
                        );
                      },
                    ),
                    TextSpan(text: " pada sidebar."),
                  ],
                ),
              ),

            SizedBox(height: 8),
              Text(
                "2. Bagian (A) adalah tabel untuk mengisi jurnal. Sesuaikan tanggal kegiatan, "
                "kemudian isi kegiatan yang dilakukan pada hari tersebut. kemudian klik tombol "
                "Simpan yang akan muncul ketika selesai mengisi kegiatan untuk menyimpan jurnal "
                "yang telah diisi.",
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                  color:Color(0xFF4B5563),
                ),
              ),

            SizedBox(height: 10),
              Text(
                "*Jurnal yang sudah berlalu tidak dapat diedit.",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                ),
              ),

            SizedBox(height: 16),
             Text(
              "B. Pekerjaan yang Dilakukan",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1C4780),
              ),
             ),

            SizedBox(height: 12),
              Text(
                "Berikut adalah langkah-langkah untuk mengelola pekerjaan yang dilakukan:",
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                  color:Color(0xFF4B5563),
                ),
              ),

            SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color:Color(0xFF4B5563),
                  ),
                  children: [
                    TextSpan(text: "1. Temukan Bagian ini pada halaman "),
                    TextSpan(
                      text: "Jurnal Pembiasaan",
                      style: TextStyle(
                        color: Color(0xFF1C4780),
                        fontWeight: FontWeight.w600,
                      ),
                       recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JurnalPembiasaanPage(), 
                          ),
                        );
                      },
                    ),
                    TextSpan(text: " atau "),
                     TextSpan(
                      text: "Klik Disini ",
                      style: TextStyle(
                        color: Color(0xFF1C4780),
                        fontWeight: FontWeight.w600,
                      ),
                       recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JurnalPembiasaanPage(), 
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color:Color(0xFF4B5563),
                  ),
                  children: [
                    TextSpan(text: "2. Klik tombol "),
                    TextSpan(
                      text: "+ Tambah Pekerjaan",
                      style: TextStyle(
                        color:Color(0xFF4B5563),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(text: " untuk menambahkan pekerjaan baru. "),
                  ],
                ),
              ),

            SizedBox(height: 8),
              Text(
                "3. Isi form yang muncul dengan detail pekerjaan, tanggal, dan saksi.",
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                  color:Color(0xFF4B5563),
                ),
              ),

              SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color:Color(0xFF4B5563),
                  ),
                  children: [
                    TextSpan(text: "4. Klik tombol "),
                    TextSpan(
                      text: "Simpan",
                      style: TextStyle(
                        color:Color(0xFF4B5563),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(text: " untuk menyimpan pekerjaan."),
                  ],
                ),
              ),

               SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color:Color(0xFF4B5563),
                  ),
                  children: [
                    TextSpan(text: "5. Untuk mengedit atau menghapus pekerjaan, klik tombol "),
                    TextSpan(
                      text: "Edit",
                      style: TextStyle(
                        color:Color(0xFF4B5563),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(text: " atau"),
                    TextSpan(
                      text: " Delete",
                      style: TextStyle(
                        color:Color(0xFF4B5563),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(text: " pada pekerjaan yang diinginkan."),
                  ],
                ),
              ),

            SizedBox(height: 10),
              Text(
                "*Jurnal yang sudah berlalu tidak dapat diedit.",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                ),
              ),

            SizedBox(height: 16),
             Text(
              "C. Materi yang dipelajari",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1C4780),
              ),
             ),

            SizedBox(height: 12),
              Text(
                "Berikut adalah langkah-langkah untuk mengelola materi yang dipelajari:",
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                  color:Color(0xFF4B5563),
                ),
              ),

            SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color:Color(0xFF4B5563),
                  ),
                  children: [
                    TextSpan(text: "1. Temukan Bagian ini pada halaman "),
                    TextSpan(
                      text: "Jurnal Pembiasaan",
                      style: TextStyle(
                        color: Color(0xFF1C4780),
                        fontWeight: FontWeight.w600,
                      ),
                       recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JurnalPembiasaanPage(), 
                          ),
                        );
                      },
                    ),
                    TextSpan(text: " atau "),
                     TextSpan(
                      text: "Klik Disini ",
                      style: TextStyle(
                        color: Color(0xFF1C4780),
                        fontWeight: FontWeight.w600,
                      ),
                       recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JurnalPembiasaanPage(), 
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color:Color(0xFF4B5563),
                  ),
                  children: [
                    TextSpan(text: "2. Klik tombol "),
                    TextSpan(
                      text: "+ Tambah Materi",
                      style: TextStyle(
                        color:Color(0xFF4B5563),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(text: " untuk menambahkan materi baru. "),
                  ],
                ),
              ),

            SizedBox(height: 8),
              Text(
                "3. Isi form yang muncul dengan detail materi, status, tanggal, dan catatan yang ingin disampaikan ke guru.",
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                  color:Color(0xFF4B5563),
                ),
              ),

              SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color:Color(0xFF4B5563),
                  ),
                  children: [
                    TextSpan(text: "4. Klik tombol "),
                    TextSpan(
                      text: "Simpan",
                      style: TextStyle(
                        color:Color(0xFF4B5563),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(text: " untuk menyimpan materi."),
                  ],
                ),
              ),

             SizedBox(height: 16),
             Text(
              "D. Poin",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1C4780),
              ),
             ),

            SizedBox(height: 12),
              Text(
                "Berikut adalah langkah-langkah untuk mengelola poin:",
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                  color:Color(0xFF4B5563),
                ),
              ),

            SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color:Color(0xFF4B5563),
                  ),
                  children: [
                    TextSpan(text: "1. Temukan Bagian ini pada halaman "),
                    TextSpan(
                      text: "Jurnal Pembiasaan",
                      style: TextStyle(
                        color: Color(0xFF1C4780),
                        fontWeight: FontWeight.w600,
                      ),
                       recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JurnalPembiasaanPage(), 
                          ),
                        );
                      },
                    ),
                    TextSpan(text: " atau "),
                     TextSpan(
                      text: "Klik Disini ",
                      style: TextStyle(
                        color: Color(0xFF1C4780),
                        fontWeight: FontWeight.w600,
                      ),
                       recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JurnalPembiasaanPage(), 
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),

            SizedBox(height: 8),
              Text(
                "2. Lihat kategori poin dan jumlah poin yang telah diperoleh.",
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                  color:Color(0xFF4B5563),
                ),
              ),

             SizedBox(height: 8),
              Text(
                "3. Poin ceklist pembiasaan akan ditampilkan secara otomatis berdasarkan aktivitas yang telah dilakukan.",
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                  color:Color(0xFF4B5563),
                ),
              ),

             SizedBox(height: 8),
              Text(
                "4. Jumlah keseluruhan poin akan ditampilkan di bagian bawah tabel poin.",
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                  color:Color(0xFF4B5563),
                ),
              ),
          ],
        ),
      ),
    );
  }
}