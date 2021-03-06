import 'package:agro_store/Admin/AdminProduct/adminProductDetatil.dart';
import 'package:agro_store/Admin/Admin_drawer/admin_drawer.dart';
import 'package:agro_store/Admin/Admin_home_page/adminApplication.dart';
import 'package:agro_store/Stlyes/colors.dart';
import 'package:agro_store/Stlyes/fonts.dart';
import 'package:agro_store/Widget/appbar.dart';
import 'package:flutter/material.dart';

class AdminProductsScreen extends StatefulWidget {
  AdminProductsScreen({Key? key}) : super(key: key);

  @override
  State<AdminProductsScreen> createState() => _AdminProductsScreenState();
}

class _AdminProductsScreenState extends State<AdminProductsScreen> {
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                children: List.generate(
                  5,
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
                                        builder: (_) => AdminProductsDetail()));
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const AdminApplication()));
                },
                child: Container(
                  height: 40,
                  color: primaryColor,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      'Add new',
                      style: textStyle1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
