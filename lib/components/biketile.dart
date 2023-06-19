// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../models/bike.dart';

class BikeTile extends StatelessWidget {
  Bike bike;
  void Function()? onTap;
  BikeTile({
    super.key,
    required this.bike,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 250,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //pic
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(bike.imagePath)),

          //desc
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              bike.description,
              style: const TextStyle(color: Colors.black),
              textAlign: TextAlign.justify,
            ),
          ),

          //price
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //name
                    Text(
                      bike.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(height: 5),

                    //price
                    Text('₹ ' + bike.price)
                  ],
                ),

                //add button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
