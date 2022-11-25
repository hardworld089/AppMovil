import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ValoraPage extends StatelessWidget {
  const ValoraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Valoracion'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Center(
              child: Text(
                'Gracias por valorar nuestra APP...',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Center(
            child: Text(
              'Valoracion General',
              style: TextStyle(color: Colors.blue, fontSize: 30),
            ),
          ),
          const Center(
            child: Image(image: AssetImage('assets/Hardworld.png')),
          ),
          Center(
            child: RatingBar.builder(
              initialRating: 3,
              minRating: 3,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              // ignore: prefer_const_constructors
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ),
        ],
      ),
    );
  }
}
