

import 'package:dio/dio.dart';
import 'package:shop_app_holstic2/Model/Shop_model.dart';

class ShopSevices
{
  static Dio dio=Dio();
  static Future<List<ShopModel>>getProducts()async
  {
    try
        {
          Response response=await dio.get("https://fakestoreapi.com/products");

          List thedata=response.data;
          if(response.statusCode==200)
            {
             return thedata.map((item) => ShopModel.fromJson(item)).toList();
            }
          else
            {
              throw Exception("Errror ");
            }
        }
          catch(e)
           {
              throw Exception("Errror :$e");
           }
  }
}