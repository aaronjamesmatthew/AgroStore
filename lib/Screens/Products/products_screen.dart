import 'package:agro_store/Stlyes/colors.dart';
import 'package:agro_store/Stlyes/fonts.dart';
import 'package:agro_store/Widget/appbar.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: List.generate(
            5,
            (index) => Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Container(
                          height: 80,
                          width: 80,
                          color: primaryColor,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        child: Container(
                          height: 80,
                          width: 80,
                          color: red,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        child: Text(
                          'Maize and Groundnut\nseeds giiven wiith 6 bags\nof Fertilizers',
                          style: textStyle4,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text('Maize is also is a...'),
                      TextButton(
                          onPressed: () {}, child: const Text('Read more'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}