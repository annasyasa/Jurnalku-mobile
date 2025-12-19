import 'package:flutter/material.dart';
import 'package:jurnalku_mobile/models/catatan_sikap_model.dart';
import 'package:jurnalku_mobile/services/catatan_sikap_service.dart';

class CatatanSikapPage extends StatefulWidget {
  const CatatanSikapPage({super.key});

  @override
  State<CatatanSikapPage> createState() => _CatatanSikapPageState();
}

class _CatatanSikapPageState extends State<CatatanSikapPage> {
  late Future<CatatanSikapResponse> futureCatatan;

  @override
  void initState() {
    super.initState();
    futureCatatan = CatatanSikapService().fetchCatatan();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: FutureBuilder<CatatanSikapResponse>(
        future: futureCatatan,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("${snapshot.error}"));
          } else if (!snapshot.hasData) {
            return const Center(child: Text("Data tidak ditemukan"));
          }

          final response = snapshot.data!;
          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Catatan Sikap Saya",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Lihat catatan sikap dan perilaku yang telah dilaporkan",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 30),
                _buildWarningCard(),
                const SizedBox(height: 20),
                
                _buildStatCard("Total Catatan", response.totalCatatan.toString(), Icons.note_alt),
                _buildStatCard("Dalam Perbaikan", response.dalamPerbaikan.toString(), Icons.bolt),
                _buildStatCard("Sudah Berubah", response.sudahBerubah.toString(), Icons.check_circle_outline),
                
                const SizedBox(height: 20),
                
                _buildExpansionDetail(response.data),
              ],
            ),
          );
        },
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
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
                  "Panca Prasetia",
                  style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text(
                  "PPLG XII-3",
                  style: TextStyle(color: Colors.black54, fontSize: 12),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          const CircleAvatar(radius: 16, backgroundColor: Colors.grey, child: Icon(Icons.person, color: Colors.white)),
        ],
      ),
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(height: 8),
              Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          Icon(icon, size: 30, color: Colors.grey.shade400),
        ],
      ),
    );
  }

  Widget _buildExpansionDetail(List<CatatanSikapData> items) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: ExpansionTile(
        title: const Text("Detail Catatan Sikap", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        children: items.map((item) => _buildItemCard(item)).toList(),
      ),
    );
  }

  Widget _buildItemCard(CatatanSikapData item) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
        color: Colors.grey.shade50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(item.kategori, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              _buildStatusBadge(item.status),
            ],
          ),
          const SizedBox(height: 8),
          Text(item.catatan),
          const Divider(),
          Text("Dilaporkan: ${item.dilaporkan}", style: const TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _buildStatusBadge(String status) {
    bool isDone = status == "sudah_berubah";
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: isDone ? Colors.green.shade100 : Colors.orange.shade100,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        status.replaceAll('_', ' ').toUpperCase(),
        style: TextStyle(fontSize: 10, color: isDone ? Colors.green.shade800 : Colors.orange.shade800, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildWarningCard() {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.orange.shade200),
      ),
      child: Row(
        children: [
          Icon(Icons.warning_amber_outlined, color: Colors.orange.shade300),
          const SizedBox(width: 10),
          const Expanded(
            child: Text(
              "Catatan sikap hanya dapat diakses oleh guru dan wali kelas.",
              style: TextStyle(fontSize: 13, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}