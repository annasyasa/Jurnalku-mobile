import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
                    "Annasya Siti Anjany",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
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
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(height: 120, color: Colors.blue),
              Positioned(
                bottom: -30,
                left: 20,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 36,
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.person, size: 40),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.camera_alt,
                            size: 14, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Annasya Siti Anjany",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text("12309532 | PPLG XII-3 | Cib 1",
                          style: TextStyle(color: Colors.black54)),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.more_horiz),
                  onPressed: () {},
                )
              ],
            ),
          ),

          const SizedBox(height: 16),
          TabBar(
            controller: _tabController,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blue,
            tabs: const [
              Tab(text: "Overview"),
              Tab(text: "Portofolio"),
              Tab(text: "Sertifikat"),
            ],
          ),

          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _overviewTab(),
                _portofolioTab(),
                _sertifikatTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// ================= OVERVIEW =================
  Widget _overviewTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _sectionHeader("Portofolio Terbaru"),
        _emptyBox("Portofolio akan ditampilkan di sini"),
        const SizedBox(height: 24),

        _sectionHeader("Sertifikat Terbaru"),
        _certificateCard(
          title: "Dasar Pemrograman Web",
          subtitle: "Dicoding Academy",
        ),

        const SizedBox(height: 24),
        _documentsSection(),

        const SizedBox(height: 24),
        _socialMediaSection(),
      ],
    );
  }

  Widget _portofolioTab() {
    return const Center(
      child: Text("Belum ada portofolio",
          style: TextStyle(color: Colors.grey)),
    );
  }

  Widget _sertifikatTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _certificateCard(
          title: "Dasar Pemrograman Web",
          subtitle: "Dicoding Academy",
        ),
      ],
    );
  }

  /// ================= COMPONENT =================
  Widget _sectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16)),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add, size: 18),
          label: const Text("Tambah"),
        )
      ],
    );
  }

  Widget _emptyBox(String text) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
          child: Text(text, style: const TextStyle(color: Colors.grey))),
    );
  }

  Widget _certificateCard({
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 120, color: Colors.grey[300]),
          const SizedBox(height: 8),
          Text(title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          Text(subtitle,
              style:
                  const TextStyle(color: Colors.black54, fontSize: 12)),
          const SizedBox(height: 4),
          const Text("Lihat Detail >",
              style: TextStyle(color: Colors.blue, fontSize: 12)),
        ],
      ),
    );
  }

  /// ================= DOKUMEN =================
  Widget _documentsSection() {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Dokumen",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),

        const SizedBox(height: 16),
        _documentCard(
          title: "Curriculum Vitae",
          subtitle: "Dokumen CV siswa",
          buttonText: "Lihat CV",
          buttonColor: Colors.blue,
        ),

        const SizedBox(height: 16),
        _documentCard(
          title: "Kartu Pelajar",
          subtitle: "Kartu identitas siswa",
          buttonText: "Lihat Kartu Pelajar",
          buttonColor: Colors.green,
          note: "Kartu pelajar dapat dilihat oleh anda dan guru",
        ),
      ],
    ),
  );
}
  Widget _documentCard({
    required String title,
    required String subtitle,
    required String buttonText,
    required Color buttonColor,
    String? note,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black54,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor,
              padding: const EdgeInsets.symmetric(vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {},
            icon: const Icon(Icons.upload, size: 18, color: Colors.white,),
            label: Text(buttonText, style: TextStyle(color: Colors.white),),
          ),
        ),

        if (note != null) ...[
          const SizedBox(height: 6),
          Row(
            children: [
              const Icon(Icons.warning_amber,
                  size: 14, color: Colors.orange),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  note,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.orange,
                  ),
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }


  /// ================= SOSIAL =================
  Widget _socialMediaSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Media Sosial",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16)),
              IconButton(
                icon: const Icon(Icons.edit, size: 20),
                onPressed: () {},
              ),
            ],
          ),

          _socialItem(
            title: "LinkedIn",
            url: "https://www.linkedin.com/annasya",
          ),
          _socialItem(
            title: "Instagram",
            url: "https://www.instagram.com/annasya",
          ),
          _socialItem(
            title: "Github",
            url: "https://github.com/annasya",
          ),
        ],
      ),
    );
  }

  Widget _socialItem({
    required String title,
    required String url,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const Icon(Icons.link),
      title: Text(title,
          style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text(url, style: const TextStyle(fontSize: 12)),
      trailing: const Icon(Icons.open_in_new, size: 18),
      onTap: () {},
    );
  }
}
