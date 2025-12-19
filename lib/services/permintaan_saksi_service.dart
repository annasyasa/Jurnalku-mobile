import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/permintaan_saksi_model.dart';

class PermintaanSaksiService {
  static const String _baseUrl = 'http://127.0.0.1:8000/api/permintaan-saksi';

  Future<List<PermintaanSaksiModel>> fetchPermintaanSaksi() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = jsonDecode(response.body);
        
        final List<dynamic> listData = jsonData['data']; 
        
        return listData.map((item) => PermintaanSaksiModel.fromJson(item)).toList();
      } else {
        throw Exception("Gagal memuat data");
      }
    } catch (e) {
      throw Exception("Koneksi Error: $e");
    }
  }
}