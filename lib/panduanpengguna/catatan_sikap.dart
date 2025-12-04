import 'package:flutter/material.dart';

class CatatanSikap extends StatelessWidget {
  const CatatanSikap({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 50,
            right: 24,
            top: 16,
            bottom: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              // tombol kembali
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Row(
                  children: const [
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

              const SizedBox(height: 20),

              // judul halaman
              Row(
                children: [
                  const Icon(Icons.menu_book, color: Color(0xFF02398C), size: 30),
                  const SizedBox(width: 10),
                  RichText(
                    text: const TextSpan(
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
                          text: 'Catatan Sikap Saya',
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

              const SizedBox(height: 12),
              const Text(
                'Panduan buat lihat dan ngerti catatan sikap yang guru masukin.',
                style: TextStyle(fontSize: 16),
              ),

              //Bagian A: Cara buka catatan
              const SizedBox(height: 20),
              const Text(
                'A. Mengakses Catatan Sikap',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),
              const Text(
                'Cara buat lihat catatan sikap kamu:',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),

              bullet("Login pakai akun pelajar."),
              bullet("Buka menu Catatan Sikap Saya."),
              bullet("Semua catatan yang pernah dimasukin guru bakal muncul di sini."),

              //Bagian B: Statistik
              const SizedBox(height: 20),
              const Text(
                'B. Memahami Statistik Dasbor',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Di bagian atas ada 3 kartu info:',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),

              bullet("Total Posting: Berapa banyak catatan yang pernah dibuat."),
              bullet('Sedang Diperbaiki: Catatan yang statusnya masih kuning.'),
              bullet('Sudah Berubah: Catatan yang statusnya hijau.'),

              const SizedBox(height: 10),
              Row(
                children: const [
                  Icon(Icons.check_box, color: Colors.green),
                  SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      ' Target: Pastikan semua postingan mencapai status "Berubah" dengan terus melakukan perbaikan.',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),

              //Bagian C: Cara baca tabel
              const SizedBox(height: 20),
              const Text(
                'C. Membaca Tabel Catatan',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              const Text(
                'Isi tabel dan maksudnya:',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),

              bullet("No: Urutan catatan."),
              bullet("Kategori: Jenis postingan."),

              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Perbuatan — Tindakan yang kamu lakukan', style: TextStyle(fontSize: 13)),
                    Text('Sifat — Sikap atau karakter', style: TextStyle(fontSize: 13)),
                    Text('Pembelajaran — Hal terkait belajar', style: TextStyle(fontSize: 13)),
                  ],
                ),
              ),

              const SizedBox(height: 8),
              bullet("Catatan: Penjelasan detail dari guru."),
              bullet("Status: Progres perbaikan."),

              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Belum ada perubahan — Masih harus diperbaiki', style: TextStyle(fontSize: 13)),
                    Text('Mulai ada perubahan — Udah mulai bagus', style: TextStyle(fontSize: 13)),
                    Text('Sudah berubah — Mantap, sudah bagus', style: TextStyle(fontSize: 13)),
                  ],
                ),
              ),

              const SizedBox(height: 8),
              bullet("Dilaporkan: Waktu catatan dibuat."),
              bullet("Pembaruan terakhir: Waktu update terbaru dari guru."),

              //Bagian D: Riwayat
              const SizedBox(height: 20),
              const Text(
                "D. Melihat Riwayat Perubahan",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 12),
              const Text("Cara lihat progres perubahan kamu:", style: TextStyle(fontSize: 16)),
              const SizedBox(height: 12),

              numbered("1.", "Klik ikon jam (⏱️) di tabel."),
              numbered("2.", "Nanti muncul tampilan riwayat.", isParent: true),

              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Column(
                  children: [
                    bullet("Lencana warna, sesuai statusnya."),
                    const SizedBox(height: 6),
                    bullet("Waktu update."),
                    const SizedBox(height: 6),
                    bullet("Nama guru."),
                    const SizedBox(height: 6),
                    bullet("Catatan lengkap progres kamu."),
                  ],
                ),
              ),

              const SizedBox(height: 12),
              numbered("3.", "Riwayat dari yang terbaru dulu."),
              const SizedBox(height: 12),

              const Text(
                "Gunakan riwayat ini untuk memahami kemajuan Anda dan area yang masih perlu ditingkatkan.",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  fontSize: 16,
                ),
              ),

              // Bagian E: Respon siswa
              const SizedBox(height: 40),
              const Text(
                "E. Menanggapi Postingan Sikap",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 12),
              const Text("Yang bisa kamu lakukan setelah dapat catatan:", style: TextStyle(fontSize: 16)),
              const SizedBox(height: 12),

              numbered("1.", "Jujur sama diri sendiri dulu."),
              numbered("2.", "Minta maaf kalau ada yang dirugikan."),
              numbered("3.", "Buat rencana perbaikan."),
              numbered("4.", "Konsisten dalam berubah."),
              numbered("5.", "Minta dukungan orang sekitar."),
              numbered("6.", "Cek progres di riwayat."),
              numbered("7.", "Jangan nyerah, perubahan itu butuh waktu!"),

              //Bagian F
              const SizedBox(height: 40),
              const Text(
                "F. Tips Pengembangan Diri",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 12),
              const Text("Beberapa tips biar makin baik:", style: TextStyle(fontSize: 16)),
              const SizedBox(height: 12),

              numbered("• ", "Jujur sama diri sendiri."),
              numbered("• ", "Minta maaf kalau salah."),
              numbered("• ", "Buat rencana perbaikan."),
              numbered("• ", "Konsisten ubah kebiasaan."),
              numbered("• ", "Minta dukungan orang lain."),
              numbered("• ", "Cek progres dari riwayat."),
              numbered("• ", "Tetap semangat!"),

              // --- Bagian G ---
              const SizedBox(height: 20),
              const Text(
                "G. Memahami Kategori Postingan",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 12),
              const Text("Penjelasan kategori catatan:", style: TextStyle(fontSize: 16)),
              const SizedBox(height: 12),

              numbered("", "Aksi (Merah):"),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Column(
                  children: [
                    bullet("Tindakan atau perilaku fisik."),
                    const SizedBox(height: 4),
                    bullet("Contoh: berkelahi, bolos, merusak barang."),
                    const SizedBox(height: 4),
                    bullet("Biasanya butuh perhatian cepat."),
                  ],
                ),
              ),

              const SizedBox(height: 12),
              numbered("", "Properti (Oranye):"),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Column(
                  children: [
                    bullet("Sikap atau karakter."),
                    const SizedBox(height: 4),
                    bullet("Contoh: kurang sopan, malas, egois."),
                    const SizedBox(height: 4),
                    bullet("Perlu perbaikan jangka panjang."),
                  ],
                ),
              ),

              const SizedBox(height: 12),
              numbered("", "Pembelajaran (Biru):"),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Column(
                  children: [
                    bullet("Hal yang berhubungan dengan belajar."),
                    const SizedBox(height: 4),
                    bullet("Contoh: malas tugas, ribut di kelas, tidak fokus."),
                    const SizedBox(height: 4),
                    bullet("Berpengaruh ke nilai akademik."),
                  ],
                ),
              ),

              // Bagian H
              const SizedBox(height: 20),
              const Text(
                "H. Hak dan Kewajiban",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 12),
              const Text("Hal-hal yang perlu kamu tahu:", style: TextStyle(fontSize: 16)),
              const SizedBox(height: 16),

              const Text(
                "Hak Kamu:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 10),

              bullet("Lihat semua postingan sikap."),
              bullet("Tau progres perubahan."),
              bullet("Dapat evaluasi yang adil."),
              bullet("Diskusi dengan guru."),

              const SizedBox(height: 22),

              const Text(
                "Tanggung Jawab Kamu:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),

              const SizedBox(height: 10),
              bullet("Baca dan pahami catatan."),
              bullet("Perbaiki diri."),
              bullet("Terima evaluasi guru dengan baik."),
              bullet("Jangan ulangi kesalahan."),
              bullet("Tunjukkan perubahan positif."),

              const SizedBox(height: 16),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("📌  "),
                  Expanded(
                    child: Text(
                      "Catatan: Anda hanya dapat melihat, tidak dapat mengedit, atau menghapus catatan. Hanya guru yang dapat memperbarui status perubahan.",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),

              //Bagian I: FAQ
              const SizedBox(height: 20),
              const Text(
                "I. FAQ (Pertanyaan yang Sering Diajukan)",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),
              const Text(
                "T: Bisakah orang tua melihat catatan sikap saya?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text(
                "A: Bisa. Orang tua bisa lihat lewat laporan yang diberikan.",
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 20),
              const Text(
                "T: Berapa lama sampai status saya berubah?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text(
                "A: Nggak ada waktu pasti. Yang penting konsisten berubah.",
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 20),
              const Text(
                "T: Bagaimana kalau saya merasa catatan itu nggak adil?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text(
                "A: Coba ngobrol langsung sama guru atau wali kelas dengan baik.",
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 20),
              const Text(
                "T: Apakah catatan sikap memengaruhi nilai?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text(
                "A: Iya, biasanya ikut pengaruh ke nilai sikap di raport.",
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

//Widget bullet list
Widget bullet(String text) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text("• "),
      Expanded(child: Text(text)),
    ],
  );
}

//Widget nomor urut
Widget numbered(String no, String text, {bool isParent = false}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(no),
      const SizedBox(width: 6),
      Expanded(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: isParent ? FontWeight.w500 : FontWeight.normal,
          ),
        ),
      ),
    ],
  );
}
