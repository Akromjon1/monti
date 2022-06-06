import 'package:cloud_firestore/cloud_firestore.dart';

import 'cart_item.dart';

class UserModel {
  static const ID = "id";
  static const NAME = "name";
  static const EMAIL = "email";
  static const CART = "cart";
  static const TEL = "tel";

   String? name;
   String? id;
   String? email;
   List<CartItemModel> cart = [];
   String? tel;


  UserModel({ this.id,  this.name,  this.email,  required this.cart,  this.tel});

  UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    Map data = snapshot.data as Map;
    email = data[EMAIL];
    id = data[ID];
    cart = _convertCartItems(data[CART] ?? []);
    tel = data[TEL];
  }

  List<CartItemModel> _convertCartItems(List cartFromDb){
    List<CartItemModel> _result = [];
    if(cartFromDb.length > 0){
      cartFromDb.forEach((element) {
      _result.add(CartItemModel.fromMap(element));
    });
    }
    return _result;
  }
}
