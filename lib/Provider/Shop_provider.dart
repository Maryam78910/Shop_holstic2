

import 'package:flutter/widgets.dart';
import 'package:shop_app_holstic2/Model/Shop_model.dart';
import 'package:shop_app_holstic2/Services/Shop_services.dart';

class ShopProvider extends ChangeNotifier
{
 List <ShopModel> shopdata=[];

  Future<void>fetchProducts()async
  {
    try
    {
      shopdata=await ShopSevices.getProducts();

    }
    catch(e)
    {
      throw Exception("EEEEEEEror:$e");
    }

    notifyListeners();
  }

}