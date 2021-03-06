import 'package:agro_store/Admin/AdminProduct/adminProduct.dart';
import 'package:agro_store/Admin/Admin_home_page/adminApplication.dart';
import 'package:agro_store/Admin/Admin_orders.dart/admin_orders.dart';
import 'package:agro_store/Admin/Admin_profile/admin_profile.dart';
import 'package:agro_store/Stlyes/colors.dart';
import 'package:flutter/material.dart';
import '../../Consumer/Screens/Auth_screen/log_in.dart';
import '../../Stlyes/fonts.dart';

class AdminDrawer extends StatelessWidget {
  const AdminDrawer({Key? key, ListView? child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: white),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.clear, color: primaryColor),
                ),
                Container(
                  width: 100,
                  child: const Image(
                    image: AssetImage('assets/agro_store.png'),
                  ),
                ),
                const SizedBox(width: 6),
                Container(
                  width: 100,
                  child: const Text('Admin'),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => AdminProfilePage()));
                        },
                        child: const ListTile(
                          leading: Text('Profile'),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => AdminOrdersScreen()));
                        },
                        child: const ListTile(
                          leading: Text('Orders'),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const ListTile(
                          leading: Text('Track Orders'),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const AdminApplication()));
                        },
                        child: const ListTile(
                          leading: Text('Apllications'),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => AdminProductsScreen()));
                        },
                        child: const ListTile(
                          leading: Text('Products'),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 80),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: TextButton(
                    onPressed: () {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Center(child: Text('Exit')),
                          content: const Text('Are you sure you want to exit?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const LogInPage())),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text(
                      'Logout',
                      style: textStyle2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
