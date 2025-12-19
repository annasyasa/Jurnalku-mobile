import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jurnalku_mobile/models/siswa_model.dart';

class SiswaService {
  static const String baseUrl = "http://127.0.0.1:8000/api/siswa";

  Future<List<SiswaModel>> fetchSiswa() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
        final List<dynamic> body = jsonResponse['data']; 
        return body.map((item) => SiswaModel.fromJson(item)).toList();
      } else {
        throw "Gagal mengambil data siswa: ${response.statusCode}";
      }
    } catch (e) {
      print("Error Fetch Siswa: $e");
      throw "Terjadi kesalahan saat memuat data.";
    }
  }
}