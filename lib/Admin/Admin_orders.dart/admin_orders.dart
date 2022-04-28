import 'package:agro_store/Admin/Admin_drawer/admin_drawer.dart';
import 'package:agro_store/Consumer/Screens/Products/product_detail.dart';
import 'package:agro_store/Stlyes/colors.dart';
import 'package:agro_store/Stlyes/fonts.dart';
import 'package:agro_store/Widget/appbar.dart';
import 'package:agro_store/Widget/drawer.dart';
import 'package:flutter/material.dart';

class AdminOrdersScreen extends StatefulWidget {
  AdminOrdersScreen({Key? key}) : super(key: key);

  @override
  State<AdminOrdersScreen> createState() => _AdminOrdersScreenState();
}

class _AdminOrdersScreenState extends State<AdminOrdersScreen> {
  GlobalKey<ScaffoldState> key = GlobalKey();

  void showDrawer() {
    key.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      drawer: const AdminDrawer(),
      appBar: appBar(onTap: showDrawer),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: List.generate(
            1,
            (index) => Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        color: primaryColor,
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 80,
                        width: 80,
                        color: red,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Maize and Groundnut\nseeds giiven wiith 6 bags\nof Fertilizers',
                        style: textStyle0,
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text('Maize is also is a...'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => ProductsDetail()));
                        },
                        child: const Text('Read more'),
                      )
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
