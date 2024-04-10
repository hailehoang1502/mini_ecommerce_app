import 'package:flutter/cupertino.dart';
import 'package:mini_ecommerce_app/models/product.dart';

class Shop extends ChangeNotifier {

  // product for sale
  final List<Product> _shop = [
    Product(
        name: "Versace Eros EDT",
        description:
            "Hương đầu: Lá bạc hà, chanh vàng, táo xanh\n"
            "Hương giữa: Cây phong lữ,đậu tonka, ambroxan,\n"
            "Hương cuối: Cỏ hương bài, gỗ tuyết tùng, hương vani, rêu sồi\n",
        price: 105,
        imagePath: "assets/images/eros.png"
  ),
    Product(
        name: "JPG Le Male Le Parfum",
        description:
            "Hương đầu: Thảo quả\n"
            "Hương giữa: Hoa diên vĩ, lavender\n"
            "Hương cuối: Hương gỗ, vanila",
        price: 220,
        imagePath: "assets/images/lemale.png"
  ),
    Product(
        name: "Lelabo Santal 33",
        description:
            "Hương đầu: Gỗ đàn hương, gỗ tuyết tùng\n"
            "Hương giữa: Bạch đậu khấu, hoa tím\n"
            "Hương cuối: Da thuộc, hổ phách, hoa diên vĩ",
        price: 322,
        imagePath: "assets/images/santal33.png"
  ),
    Product(
        name: "YSL Y EDP",
        description:
            "Hương đầu: Cam bergamot, gừng, táo xanh\n"
            "Hương giữa: Quả bách xù, hoa phong lữ, lá xô thơm\n"
            "Hương cuối: Cỏ hương bài, gỗ tuyết tùng, đậu tonka, trầm hương",
        price: 155,
        imagePath: "assets/images/yedp.png"
  ),
  ];

  // user cart
  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }

}