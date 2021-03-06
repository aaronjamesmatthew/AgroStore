import 'package:agro_store/Consumer/Screens/Auth_screen/sign_up.dart';
import 'package:agro_store/Consumer/Screens/application.dart';
import 'package:agro_store/Stlyes/colors.dart';
import 'package:agro_store/Stlyes/fonts.dart';
import 'package:agro_store/Widget/appbar.dart';
import 'package:agro_store/Widget/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductsDetail extends StatefulWidget {
  ProductsDetail({Key? key}) : super(key: key);

  @override
  State<ProductsDetail> createState() => _ProductsDetailState();
}

class _ProductsDetailState extends State<ProductsDetail> {
  GlobalKey<ScaffoldState> key = GlobalKey();

  void showDrawer() {
    key.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      key: key,
      appBar: appBar(onTap: showDrawer),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: const Image(
                    image: AssetImage('assets/Frame 33575.png'),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Card(
                child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                      'Maize is also is a.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a hendrerit tortor. Sed tempor purus auctor lacus posuere fermentum. Aenean et lorem volutpat, posuere dolor eu, faucibus ante. Ut venenatis consectetur dui id lacinia. Duis nec ante felis. Cras rutrum aliquet egestas. Fusce condimentum eleifend erat eget porta. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur finibus nisl augue, in porta dolor commodo eget. Nunc iaculis vitae leo eu eleifend.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a hendrerit tortor. Sed tempor purus auctor lacus posuere fermentum. Aenean et lorem volutpat, posuere dolor eu, faucibus ante. Ut venenatis consectetur dui id lacinia. Duis nec ante felis. Cras rutrum aliquet egestas. Fusce condimentum eleifend erat eget porta. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur finibus nisl augue, in porta dolor commodo eget. Nunc iaculis vitae leo eu eleifend.    ',
                      style: textStyle0),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 260),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.pop(context);
                    Navigator.push(context,
                        CupertinoPageRoute(builder: ((context) => ApplicationPage())));
                  },
                  child: Container(
                    height: 40,
                    width: 80,
                    color: primaryColor,
                    child: Center(
                      child: Text(
                        'Apply',
                        style: textStyle1,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
