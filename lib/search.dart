import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jurnalku_mobile/models/siswa_model.dart';
import 'package:jurnalku_mobile/services/siswa_service.dart';

class DirektoriSiswaPage extends StatefulWidget {
  const DirektoriSiswaPage({super.key});

  @override
  State<DirektoriSiswaPage> createState() => _DirektoriSiswaPageState();
}

class _DirektoriSiswaPageState extends State<DirektoriSiswaPage> {
  List<SiswaModel> allStudents = [];
  List<SiswaModel> displayedStudents = [];
  bool isLoading = true;
  final TextEditingController _searchController = TextEditingController();

  final List<String> rombelList = ["XII RPL 1", "XII RPL 2", "PPLG XII-3"];
  final List<String> rayonList = [
    "Cicurug 1",
    "Cicurug 2",
    "Ciawi 1",
    "Ciawi 2",
  ];

  bool showFilter = false;
  String? selectedRombel;
  String? selectedRayon;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      final data = await SiswaService().fetchSiswa();
      setState(() {
        allStudents = data;
        displayedStudents = data;
        isLoading = false;
      });
    } catch (e) {
      setState(() => isLoading = false);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  void _filterSiswa() {
    setState(() {
      displayedStudents = allStudents.where((siswa) {
        final matchesSearch =
            siswa.nama.toLowerCase().contains(
              _searchController.text.toLowerCase(),
            ) ||
            siswa.nis.toString().contains(_searchController.text);
        final matchesRombel =
            selectedRombel == null || siswa.rombel == selectedRombel;
        final matchesRayon =
            selectedRayon == null || siswa.rayon == selectedRayon;

        return matchesSearch && matchesRombel && matchesRayon;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: RefreshIndicator(
        onRefresh: _loadData,
        child: ListView(
          children: [
            _buildHeaderSection(),
            const SizedBox(height: 20),
            _buildResultCountText(),
            const SizedBox(height: 16),
            isLoading
                ? const Center(child: CircularProgressIndicator())
                : _buildStudentList(),
          ],
        ),
      ),
    );
  }


  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 2,
      title: Row(
        children: const [
          Icon(Icons.menu_book_outlined, color: Color(0xFF02398c), size: 28),
          SizedBox(width: 8),
          Text(
            "Jurnalku",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderSection() {
    return SizedBox(
      height: showFilter ? 550 : 350,
      child: Stack(
        children: [
          Container(decoration: const BoxDecoration(color: Color(0xFF02398c))),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Direktori Siswa",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      TextField(
                        controller: _searchController,
                        onChanged: (_) => _filterSiswa(),
                        decoration: InputDecoration(
                          hintText: "Cari nama atau NIS...",
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      _buildFilterToggle(),
                      if (showFilter) _buildFilterFields(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterToggle() {
    return GestureDetector(
      onTap: () => setState(() => showFilter = !showFilter),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.filter_list, size: 18),
            const SizedBox(width: 8),
            const Text("Filter Lanjutan"),
            Icon(
              showFilter ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterFields() {
    return Column(
      children: [
        const SizedBox(height: 10),
        DropdownButtonFormField<String>(
          value: selectedRombel,
          hint: const Text("Pilih Rombel"),
          items: rombelList
              .map((e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
          onChanged: (v) => setState(() {
            selectedRombel = v;
            _filterSiswa();
          }),
        ),
        const SizedBox(height: 10),
        DropdownButtonFormField<String>(
          value: selectedRayon,
          hint: const Text("Pilih Rayon"),
          items: rayonList
              .map((e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
          onChanged: (v) => setState(() {
            selectedRayon = v;
            _filterSiswa();
          }),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              selectedRayon = null;
              selectedRombel = null;
              _searchController.clear();
              _filterSiswa();
            });
          },
          child: const Text("Reset Filter"),
        ),
      ],
    );
  }

  Widget _buildResultCountText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        "Menampilkan ${displayedStudents.length} siswa",
        style: TextStyle(color: Colors.grey[700]),
      ),
    );
  }

  Widget _buildStudentList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: displayedStudents.map((s) => buildStudentCard(s)).toList(),
      ),
    );
  }

  Widget buildStudentCard(SiswaModel siswa) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(radius: 28, child: Icon(Icons.person, size: 38)),
            const SizedBox(height: 14),
            Text(
              siswa.nama,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              "${siswa.nis} | ${siswa.rombel} | ${siswa.rayon}",
              style: TextStyle(color: Colors.grey[600], fontSize: 13),
            ),
            const Divider(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStatIcon(
                  Icons.folder_copy,
                  "${siswa.portfolio} Portfolio",
                ),
                _buildStatIcon(
                  Icons.verified_outlined,
                  "${siswa.sertifikat} Sertifikat",
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF02398c),
                ),
                onPressed: () {},
                child: const Text(
                  "Lihat Detail",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatIcon(IconData icon, String label) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Colors.grey),
        const SizedBox(width: 6),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
