import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//hbjbjb
class TheProduct extends StatelessWidget {
  final String image;
  final String price;
  final String title;
  const TheProduct({super.key,
    required this.price,
    required this.title,
    required this.image,

//bjbjjbbbbj
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          child:Image.network(image,width: 200,height: 200,),
        ),
        Padding(
          padding: EdgeInsets.all(12),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Card(
                child: Text("Name:$title",
                  overflow:TextOverflow.ellipsis,
                  maxLines: 4,
                  style: TextStyle(
                    fontSize: 13,

                  ),
                  ),
              ),
               //SizedBox(height: 12,),
              Card(
                child: Text("Price:$price"),
              ),
             // SizedBox(height: 15,),
            ],
          ),
        )
      ],
    );
  }
}
