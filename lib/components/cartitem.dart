// ignore_for_file: must_be_immutable

import 'package:app1/models/bike.dart';
import 'package:app1/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Bike bike;
  CartItem({super.key, required this.bike});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
// remove item from cart
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemToCart(widget.bike);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.bike.imagePath),
        title: Text(widget.bike.name),
        subtitle: Text(widget.bike.price),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
