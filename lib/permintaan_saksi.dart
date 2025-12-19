import 'package:flutter/material.dart';
import 'package:jurnalku_mobile/models/permintaan_saksi_model.dart';
import 'package:jurnalku_mobile/services/permintaan_saksi_service.dart';

class PermintaanSaksi extends StatefulWidget {
  const PermintaanSaksi({super.key});

  @override
  State<PermintaanSaksi> createState() => _PermintaanSaksiState();
}

class _PermintaanSaksiState extends State<PermintaanSaksi> {
  late Future<List<PermintaanSaksiModel>> futurePermintaan;
  final PermintaanSaksiService service = PermintaanSaksiService();

  @override
  void initState() {
    super.initState();
    futurePermintaan = service.fetchPermintaanSaksi();
  }

  String formatTanggalIndo(String dateStr) {
    try {
      List<String> parts = dateStr.split("-");
      if (parts.length != 3) return dateStr;

      String hari = parts[0];
      int bulanIndex = int.parse(parts[1]);
      String tahun = parts[2];

      List<String> namaBulan = [
        "", "Januari", "Februari", "Maret", "April", "Mei", "Juni",
        "Juli", "Agustus", "September", "Oktober", "November", "Desember"
      ];

      return "$hari ${namaBulan[bulanIndex]} $tahun";
    } catch (e) {
      return dateStr;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA), // Background sedikit abu untuk kontras kartu
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: true,
        title: const Text(
          "Permintaan Saksi",
          style: TextStyle(
            color: Colors.black, 
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: FutureBuilder<List<PermintaanSaksiModel>>(
        future: futurePermintaan,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text(
                "Tidak ada data permintaan.",
                style: TextStyle(color: Colors.grey),
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final data = snapshot.data![index];
              return _buildCard(data, context);
            },
          );
        },
      ),
    );
  }

  Widget _buildCard(PermintaanSaksiModel data, BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Theme(
        // Menghilangkan garis divider default milik ExpansionTile
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          leading: CircleAvatar(
            radius: 24,
            backgroundColor: const Color(0xFFDCCBFF),
            child: Text(
              "${data.id}",
              style: const TextStyle(
                color: Color(0xFF6200EE),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          title: Text(
            data.pengirim,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: Color(0xFF2D3436),
            ),
          ),
          subtitle: Text(
            "Klik untuk detail",
            style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(height: 1),
                  const SizedBox(height: 16),
                  
                  // Detail Tanggal
                  _buildDetailRow(
                    icon: Icons.calendar_today_rounded,
                    label: "Tanggal Pelaksanaan",
                    value: formatTanggalIndo(data.tanggal),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Detail Status
                  _buildDetailRow(
                    icon: Icons.info_outline_rounded,
                    label: "Status Konfirmasi",
                    customWidget: _buildStatusBadge(data.konfirmasi),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow({required IconData icon, required String label, String? value, Widget? customWidget}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 18, color: Colors.grey.shade600),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: TextStyle(fontSize: 12, color: Colors.grey.shade600)),
            const SizedBox(height: 4),
            if (value != null)
              Text(
                value,
                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
            if (customWidget != null) customWidget,
          ],
        ),
      ],
    );
  }

  Widget _buildStatusBadge(String status) {
    Color color;
    String text = status.toLowerCase();

    if (text == "diterima") {
      color = Colors.green;
    } else if (text == "ditolak") {
      color = Colors.red;
    } else {
      color = Colors.orange;
    }

    return Container(
      margin: const EdgeInsets.only(top: 4),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.12),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withOpacity(0.5), width: 1),
      ),
      child: Text(
        status.toUpperCase(),
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w800,
          fontSize: 11,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}