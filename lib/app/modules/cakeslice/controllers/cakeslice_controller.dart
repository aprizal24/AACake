import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../data/cake_model.dart';

class CakesliceController extends GetxController {
  RxList<Result> cakes = RxList<Result>([]);
  RxBool isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    fetchCakes();
  }

  Future<void> fetchCakes() async {
    try {
      isLoading.value = true;
      var response = await http.get(Uri.parse(
          "https://api.spoonacular.com/recipes/complexSearch?query=cake&apiKey=0d8c7d722f6b4496aac977bac4191d80"));

      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body);
        CakeModel cake = CakeModel.fromJson(jsonData);

        cakes.assignAll(cake.results);
      } else {
        throw Exception("error when request data");
      }
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading.value = false; // Set loading state to false when done
    }
  }
}
