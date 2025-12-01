import 'package:flutter/material.dart';
import 'package:jurnalku_mobile/bottom_nav.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscurePassword = true;

  List<Map<String, dynamic>> cards = [
    {
      "icon": Icons.school,
      "title": "Dirancang untuk Sekolah Kami",
      "desc":
          "Dikembangkan khusus untuk memenuhi kebutuhan sekolah kami dengan fokus pada kemajuan siswa kami.",
      "color": Colors.orange,
    },
    {
      "icon": Icons.route,
      "title": "Pemantauan yang Terstruktur",
      "desc":
          "Memudahkan guru dalam menyusun dan memantau daftar kompetensi keahlian yang harus dikuasai siswa.",
      "color": Colors.purple,
    },
    {
      "icon": Icons.widgets,
      "title": "Fitur Praktis dan Bermanfaat",
      "desc":
          "Termasuk reminder otomatis, grafik perkembangan, dan analisis mendalam untuk efektivitas belajar.",
      "color": Colors.blue,
    },
    {
      "icon": Icons.check_circle,
      "title": "Pengajuan Kompetensi oleh Siswa",
      "desc":
          "Siswa dapat mengajukan kompetensi yang telah dikuasai untuk diverifikasi oleh guru.",
      "color": Colors.red,
    },
    {
      "icon": Icons.verified,
      "title": "Validasi dan Tanda Tangan Guru",
      "desc":
          "Setiap kompetensi yang disetujui akan diberikan tanda terima dan tanda tangan guru sebagai bukti.",
      "color": Colors.green,
    },
    {
      "icon": Icons.visibility,
      "title": "Pantauan Real-Time dan Transparan",
      "desc":
          "Monitoring langsung, menciptakan lingkungan belajar yang efisien.",
      "color": Colors.cyan,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/banner.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Masuk untuk memulai ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "Jurnalku",
                          style: TextStyle(
                            color: Color(0xFF02398C),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 60),

                  const Text(
                    "Username/NIS",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 10),

                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),

                  const SizedBox(height: 30),

                  const Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextFormField(
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF005BC5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Masuk",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Center(
                    child: Text(
                      "Lupa Password? Hubungi guru laboran.",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),

                  const SizedBox(height: 50),

                  const Center(
                    child: Text(
                      "Menyatukan Upaya untuk Kemajuan Siswa",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black87,
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Center(
                    child: Text(
                      "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),

                  const SizedBox(height: 30),

                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: cards.length,
                    itemBuilder: (context, index) {
                      final item = cards[index];

                      return Card(
                        elevation: 2,
                        margin: const EdgeInsets.only(bottom: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: item["color"].withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  item["icon"],
                                  color: item["color"],
                                  size: 30,
                                ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item["title"],
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      item["desc"],
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            // BottomNav(),
          ],
        ),
      ),
    );
  }
}
