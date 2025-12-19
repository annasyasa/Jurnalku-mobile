class SiswaModel {
  final int id;
  final String nama;
  final int nis;
  final String rombel;
  final String rayon;
  // Field tambahan untuk UI (opsional jika API nanti diupdate)
  final int portfolio;
  final int sertifikat;

  SiswaModel({
    required this.id,
    required this.nama,
    required this.nis,
    required this.rombel,
    required this.rayon,
    this.portfolio = 0, 
    this.sertifikat = 0,
  });

  factory SiswaModel.fromJson(Map<String, dynamic> json) {
    return SiswaModel(
      id: json['id'],
      nama: json['nama'],
      nis: json['nis'],
      rombel: json['rombel'],
      rayon: json['rayon'],
      // portfolio: json['portfolio'] ?? 0,
      // sertifikat: json['sertifikat'] ?? 0,
    );
  }
}