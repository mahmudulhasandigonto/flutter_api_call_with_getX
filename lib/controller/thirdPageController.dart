
import 'package:get/get.dart';
import 'package:practice/service/api_service.dart';

import '../model/product_model.dart';

class ThirdPageController extends GetxController{

 var productList = <Product>[];
 var isLoading = true;

 @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async{
   try{
     isLoading = true;
     var products = await ApiService.fetchProducts("api/v1/products.json?brand=marienatie");
     if(products != null){
       productList.assignAll(products);
     }
   }finally{
     isLoading = false;
   }
   update();
  }


}