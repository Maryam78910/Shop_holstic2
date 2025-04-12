import 'dart:ffi';

class ShopModel
{
final  String image;
final  double price;
final String title;
final String description;

  
  ShopModel({
    required this.image,
    required this.price,
    required this.title,
    required this.description,

  });
  
  factory ShopModel.fromJson(Map<String,dynamic>json)
  {
    return ShopModel(
        image: json['image'],
        price: json['price'].toDouble(),
        description: json['description'],
        title: json['title'],
    );
  }
}