import 'package:app1/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/biketile.dart';
import '../models/bike.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
// add bike to cart
  void addBikeToCart(Bike bike) {
    Provider.of<Cart>(context, listen: false).addItemToCart(bike);

    // alert cart added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Successfully added!'),
        content: Text('Check your cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          //message
          const SizedBox(height: 100),

          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Text(
              "Let's find the ideal bike for you",
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 43,
                  fontWeight: FontWeight.bold),
            ),
          ),

          //card

          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                // get bike from list
                Bike bike = value.getBikeList()[index];

                //return tile
                return BikeTile(
                  bike: bike,
                  onTap: () => addBikeToCart(bike),
                );
              },
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Divider(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
