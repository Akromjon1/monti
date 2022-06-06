class OrdersModel{
  static const ID = "id";
  static const ORDER_ID = "orderId";
  static const IMAGE = "image";
  static const AMOUNT = "amount";
  static const CART = "cart";
  static const CREATED_AT = "createdAt";

  String? id;
  String? orderId;
  String? image;
  String? amount;
  List cart = [];
  int? createdAt;

  OrdersModel({required this.id, required this.orderId, required this.amount, required this.cart, required this.createdAt, required this.image});

  OrdersModel.fromMap(Map data){
    id = data[ID];
    orderId = data[orderId];
    image = data[image];
    amount = data[amount];
    cart = data[cart];
    createdAt = data[createdAt];
  }


}