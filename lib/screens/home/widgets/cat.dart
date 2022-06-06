import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/controllers.dart';
import '../../../models/product.dart';
import 'single_product.dart';

class Cat extends StatelessWidget {
  final ProductModel productModel;

  const Cat({Key? key, required this.productModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
      return Obx(()=>GridView.count(
          crossAxisCount: 2,
          childAspectRatio: .63,
          padding: const EdgeInsets.all(10),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 10,

          children:  producsController.products.map((ProductModel product){

            return SingleProductWidget(product: product);

          }).toList()));


  }
}
