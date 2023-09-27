import 'package:carprojact/Componets/CartCard.dart';
import 'package:carprojact/Screens/ProductScreen.dart';
import 'package:flutter/material.dart';

import '../Componets/LogoCar.dart';
import '../model/CarModel.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CarModel> Cars = [
    CarModel(CarUrl: "assets/car-png-39071.png", CarName: "Range Rover", CarSped: "255", CarPrice: "150.0"),
    CarModel(CarUrl: "assets/car-png-39071.png", CarName: "Range Rover", CarSped: "255", CarPrice: "452.0"),
    CarModel(CarUrl: "assets/car-png-39054.png", CarName: "Range Rover", CarSped: "255", CarPrice: "78.2"),
    CarModel(CarUrl: "assets/car-png-39071.png", CarName: "Range Rover", CarSped: "255", CarPrice: "451.0"),
    CarModel(CarUrl: "assets/car-png-39054.png", CarName: "Range Rover", CarSped: "255", CarPrice: "999.0"),
    CarModel(CarUrl: "assets/car-png-39071.png", CarName: "Range Rover", CarSped: "255", CarPrice: "777.0"),
    CarModel(CarUrl: "assets/car-png-39071.png", CarName: "Range Rover", CarSped: "255", CarPrice: "727.0"),
    CarModel(CarUrl: "assets/car-png-39054.png", CarName: "Range Rover", CarSped: "255", CarPrice: "472.0"),

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
       title: Text("home", style: TextStyle(color: Colors.black),),
        leading: const Icon(Icons.list , color: Colors.yellow,) ,
        actions: [
          Spacer(),
          const Icon(Icons.add_alert , color: Colors.yellow,),
          const CircleAvatar(
            backgroundColor: Colors.yellow,
            radius: 20,
            child:Icon(Icons.shopping_cart_checkout , color: Colors.blue,),
          ),
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/monairy .png",),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("hello Ziad" ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  labelText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius:BorderRadius.circular(20)
                  ),
                ),
              ),
            ),
             const Text("Brands" , style: TextStyle( fontWeight: FontWeight.bold , fontSize: 15),),
            Expanded(
              child: SizedBox(

                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context , index) => LogoCar(),
                ),
              ),
            ),




            const Text("Avaiable Cars" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            Expanded(
              flex: 8,
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: Cars.length,
                itemBuilder: (context , index){
                  return  CarCard(Car: Cars[index] , onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ProductDitals(product: Cars[index]);
                    }));
                  },);
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),

              ),
            )

          ],
        ),
      ),
    );
  }
}
