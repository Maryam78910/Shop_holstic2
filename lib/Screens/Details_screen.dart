import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String image;
  final String price;
  final String title;
  final String description;
  const DetailsPage({super.key,
    required this.price,
    required this.title,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("DetailsPage"),
      ),
      body: Row(
        children: [

          Image.network(image),
          SizedBox(height: 17,),
          Column(
            children: [

              Text(title),

              SizedBox(height: 17,),

               Text(price),
            ],
          )
        ],
      ),
    );
  }
}
