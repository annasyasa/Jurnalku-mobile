import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jurnalku_mobile/models/catatan_sikap_model.dart';

class CatatanSikapService {
  static const String baseUrl = "http://127.0.0.1:8000/api/catatan-sikap";

  Future<CatatanSikapResponse> fetchCatatan() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));

      if (response.statusCode == 200) {
        return CatatanSikapResponse.fromJson(json.decode(response.body));
      } else {
        throw Exception("Gagal memuat data");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }
}