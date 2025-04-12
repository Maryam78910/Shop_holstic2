import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_holstic2/Provider/Shop_provider.dart';
import 'package:shop_app_holstic2/Screens/Details_screen.dart';
import 'package:shop_app_holstic2/Widgets/product.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),

      body: Consumer<ShopProvider>(builder: (context, value, child) {

        final pro=value.shopdata;
        if(pro.isEmpty)
          {
            value.fetchProducts();
            return Center(child: CircularProgressIndicator(),);
          }
           else
             {
               return
                 GridView.builder(

                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 2,
                       mainAxisSpacing: 20,
                       crossAxisSpacing: 70,
                       childAspectRatio: 3,

                     ),
                     itemCount: pro.length,
                     itemBuilder: (context, index) {

                       final pro1=pro[index];

                       return GestureDetector(
                         onTap: ()
                         {
                           Navigator.push(context, MaterialPageRoute(builder:(context) => DetailsPage(
                               price:pro1.price.toString() ,
                               title: pro1.title,
                               image: pro1.image,
                               description: pro1.description),));
                         },
                         child: TheProduct(
                             price: pro1.price.toString(),
                             title: pro1.title,
                             image: pro1.image),
                       );

                     },

                 );


             }
      },),
    );
  }
}
