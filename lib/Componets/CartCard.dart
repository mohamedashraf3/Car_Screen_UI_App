import 'package:carprojact/model/CarModel.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  CarCard({Key? key , required this.Car , required this.onTap}) : super(key: key);
 final CarModel Car;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          width: 50,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Image.asset(Car.CarUrl ,width: 150, ),
              Text(Car.CarName , style:const TextStyle(fontWeight: FontWeight.bold , fontSize:20),),
              Text( "Speed :" + Car.CarSped , style:const  TextStyle(color: Colors.grey),),
              Text("Price :"+Car.CarPrice ,style:const TextStyle(color: Colors.red), ),
            ],
          ),
        ),
      ),
    );
  }
}
