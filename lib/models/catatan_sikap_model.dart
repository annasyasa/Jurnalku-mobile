class CatatanSikapResponse {
  final bool status;
  final int totalCatatan;
  final int dalamPerbaikan;
  final int sudahBerubah;
  final List<CatatanSikapData> data;

  CatatanSikapResponse({
    required this.status,
    required this.totalCatatan,
    required this.dalamPerbaikan,
    required this.sudahBerubah,
    required this.data,
  });

  factory CatatanSikapResponse.fromJson(Map<String, dynamic> json) {
    return CatatanSikapResponse(
      status: json['status'] ?? false,
      totalCatatan: json['total_catatan'] ?? 0,
      dalamPerbaikan: json['dalam_perbaikan'] ?? 0,
      sudahBerubah: json['sudah_berubah'] ?? 0,
      data: (json['data'] as List)
          .map((item) => CatatanSikapData.fromJson(item))
          .toList(),
    );
  }
}

class CatatanSikapData {
  final int id;
  final String siswaNama;
  final String kategori;
  final String catatan;
  final String status;
  final String dilaporkan;

  CatatanSikapData({
    required this.id,
    required this.siswaNama,
    required this.kategori,
    required this.catatan,
    required this.status,
    required this.dilaporkan,
  });

  factory CatatanSikapData.fromJson(Map<String, dynamic> json) {
    return CatatanSikapData(
      id: json['id'],
      siswaNama: json['siswa_nama'],
      kategori: json['kategori'],
      catatan: json['catatan'],
      status: json['status'],
      dilaporkan: json['dilaporkan'],
    );
  }
}