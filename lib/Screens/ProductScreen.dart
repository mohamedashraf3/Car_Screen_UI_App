import 'package:carprojact/model/CarModel.dart';
import 'package:flutter/material.dart';

class ProductDitals extends StatelessWidget {
  ProductDitals({Key? key , required this.product}  ) : super(key: key);
final CarModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Car Details Screen"),),

    body: Column(
mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(product.CarUrl),
        const SizedBox(height: 30,),

        Container(
          height: 100,
           width: 300,
           decoration: BoxDecoration(
                   color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20),

         ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text(product.CarName , style:const TextStyle(fontWeight: FontWeight.bold , fontSize:20),),
           Text( "Speed :" +product.CarSped , style:const  TextStyle(fontWeight: FontWeight.bold),),
           Text("Price :"+product.CarPrice ,style:const TextStyle(fontWeight: FontWeight.bold), ),
         ],
         ),
          )
          ],
),
    );
  }
}
