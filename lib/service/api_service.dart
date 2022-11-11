import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:practice/model/product_model.dart';

class ApiService{
  static var client = http.Client();

  static Future<List<Product>> fetchProducts(String uri) async{
    var response = await client.get(Uri.parse("https://makeup-api.herokuapp.com/"+uri));

    if(response.statusCode == 200){
      return productFromJson(response.body);
    }else{
      throw Exception("Product Not Found");
    }
  }

}