import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/faculty_model.dart';

class ApiService {
  static Future<List<Faculty>> fetchFaculty() async {
    final response = await http.get(
      Uri.parse('https://randomuser.me/api/?results=10'),
    );

    final data = jsonDecode(response.body);
    List results = data['results'];

    return results.map((e) => Faculty.fromJson(e)).toList();
  }
}
