import 'package:flutter/material.dart';

import 'bike.dart';

class Cart extends ChangeNotifier {
  // list of bikes
  List<Bike> bikeShop = [
    Bike(
        name: 'Hayabusa',
        price: '16,97,240',
        imagePath: 'assets/images/hayabusa.jpg',
        description:
            "Famed for its abundant power, agility and majestic presence. Legendary for establishing new levels of ultimate sport performance."),
    Bike(
        name: 'Continental GT',
        price: '3,39,000',
        imagePath: 'assets/images/bike6.jpeg',
        description:
            "Royal Enfield Continental GT 650 is a cafe racer bike powered by 648cc BS6 engine which develops a power of 47 bhp and a torque of 52 Nm. With both front and rear disc brakes."),
    Bike(
        name: 'Himalayan',
        price: '2,28,000',
        imagePath: 'assets/images/himalayan.jpg',
        description:
            "Royal Enfield Himalayan is a adventure bike powered by 411cc BS6 engine which develops a power of 24.3 bhp and a torque of 32 Nm. With both front and rear disc brakes."),
    Bike(
        name: 'Vitpilen 250',
        price: '2,24,000',
        imagePath: 'assets/images/husk.jpg',
        description:
            "The Vitpilen 250 is an unassuming hero of the sub-500 cc world. Its surefootedness, light weight and immersive riding position guarantee helmet-hidden smiles. It reacts to the smallest response, moves at the lightest touch and feeds back every road texture through low-slung bars."),
  ];

  //list of cart items
  List<Bike> userCart = [];

  //get list of bikes
  List<Bike> getBikeList() {
    return bikeShop;
  }

  //get cart
  List<Bike> getUserCart() {
    return userCart;
  }

  //add item
  void addItemToCart(Bike bike) {
    userCart.add(bike);
    notifyListeners();
  }

  //remove item
  void removeItemToCart(Bike bike) {
    userCart.remove(bike);
    notifyListeners();
  }
}
