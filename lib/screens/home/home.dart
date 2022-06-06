import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:badges/badges.dart';

import '../../constants/controllers.dart';
import '../../widgets/custom_text.dart';
import 'widgets/products.dart';
import 'widgets/shopping_cart.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: CustomText(
            text: "Yaponamama",
            size: 24,
            weight: FontWeight.bold, color: Colors.black,
          ),
          actions: [
               IconButton(
                    icon: Badge(

                      badgeColor: Colors.teal,
                          badgeContent: Obx(() => Text(userController.userModel.value.cart.length.toString(), style: const TextStyle(color: Colors.white),)),
                        child: Icon(Icons.shopping_cart)),
                    onPressed: () {
                      showBarModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                          color: Colors.white,
                          child: ShoppingCartWidget(),
                        ),
                      );
                    }),


          ],
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            children: [
              Obx(()=>UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black
                  ),

                  accountName: Text(userController.userModel.value.name ?? "", style: TextStyle(color: Colors.white),),
                  accountEmail: Text(userController.userModel.value.email ?? "",style: TextStyle(color: Colors.white))),
              ),
             // Obx(()=> Container( child: Text(userController.userModel.value.tel ?? "", style: TextStyle(color: Colors.white, backgroundColor: Colors.black)))),



              ListTile(
                onTap: () {
                  userController.signOut();
                },
                leading: Icon(Icons.exit_to_app),
                title: Text("Log out"),
              )
            ],
          ),
        ),
        body: Container(
          color: Colors.white30,
          child: ProductsWidget(),
        ));
  }
}
