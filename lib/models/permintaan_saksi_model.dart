class PermintaanSaksiModel {
  final int id;
  final String pengirim;
  final String tanggal;
  final String konfirmasi; 
  PermintaanSaksiModel({
    required this.id,
    required this.pengirim,
    required this.tanggal,
    required this.konfirmasi,
  });

  factory PermintaanSaksiModel.fromJson(Map<String, dynamic> json) {
    return PermintaanSaksiModel(
      id: json['id'] ?? 0,
      pengirim: json['pengirim'] ?? '',
      tanggal: json['tanggal'] ?? '',
      konfirmasi: json['konfirmasi'] ?? 'pending', 
    );
  }
}