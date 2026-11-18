import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pasazka/models/makanan_models.dart';

class MakananController extends GetxController {
  RxList<MakananModel> listMakanan = <MakananModel>[].obs;
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getMakanan();
  }

  Future<void> getMakanan() async {
    try {
      isLoading.value = true;

      final url = Uri.parse(
        'https://www.themealdb.com/api/json/v1/1/categories.php',
      );

      final response = await http.get(url);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        List<dynamic> products = data['products'];

        listMakanan.assignAll(
          products.map((item) => MakananModel.fromJson(item)).toList(),
        );
      } else {
        print('Gagal mengambil data: ${response.statusCode}');
      }
    } catch (e) {
      print('Terjadi kesalahan: $e');
    } finally {
      isLoading.value = false;
    }
  }

  void removeMakanan(int index) {
    listMakanan.removeAt(index);
  }
}