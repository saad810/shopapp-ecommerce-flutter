import 'package:shopapp/models/shoe.dart';

class Cart {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Air Max 90',
        brand: 'Nike',
        picture: 'assets/images/nike_air_max_90.jpg',
        price: 120,
        description:
            'The Nike Air Max 90 stays true to its OG roots with its iconic Waffle outsole, stitched overlays and classic, color-accented TPU plates. Retro colors celebrate the first generation while Max Air cushioning adds comfort to your journey.'),
    Shoe(
        name: 'Nike Air Max 97',
        brand: 'Nike',
        picture: 'assets/images/nike_air_max_97.jpg',
        price: 170,
        description:
            'The Nike Air Max 97 keeps a sneaker icon going strong with the same design details that made it famous: water-ripple lines, reflective piping and full-length Max Air cushioning.'),
    Shoe(
        name: 'Nike Air Max 270',
        brand: 'Nike',
        picture: 'assets/images/nike_air_max_270.jpg',
        price: 150,
        description:
            'The Nike Air Max 270 delivers visible air under every step. Updated for modern comfort, it nods to the original 1991 Air Max 180 with its exaggerated tongue top and heritage tongue logo.'),
    Shoe(
        name: 'Nike Air Max 720',
        brand: 'Nike',
        picture: 'assets/images/nike_air_max_720.jpg',
        price: 200,
        description:
            'The Nike Air Max 720 goes bigger than ever before with Nike\'s tallest Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.'),
    Shoe(
        name: 'Nike Air Max 2090',
        brand: 'Nike',
        picture: 'assets/images/nike_air_max_2090.jpg',
        price: 150,
        description:
            'Bring the past into the future with the Nike Air Max 2090, a bold look inspired by the DNA of the iconic Air Max 90. Brand-new Nike Air cushioning underfoot adds unparalleled comfort while transparent mesh and vibrantly colored textile on select colorways blend with timeless OG features for an edgy, modernized look.'),
    Shoe(
        name: 'Nike Air Max Plus',
        brand: 'Nike',
        picture: 'assets/images/nike_air_max_plus.jpg',
        price: 160,
        description:
            'The Nike Air Max Plus brings you legendary \'Tuned\' Air cushioning for extra comfort. It keeps the original inspiration: wavy lines that look like palm leaves and a whale\'s tail. Gradient colors add a modern edge.'),
  ];

  List<Shoe> cartItems = [];

  //get list of show for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get Cart
  List<Shoe> getCart() {
    return cartItems;
  }

  //add to cart
  void addToCart(Shoe shoe) {
    cartItems.add(shoe);
  }

  //remove from cart
  void removeFromCart(Shoe shoe) {
    cartItems.remove(shoe);
  }
}
