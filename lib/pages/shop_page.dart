import 'package:flutter/material.dart';
import 'package:shopapp/components/product_tile.dart';
import 'package:shopapp/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // search bar (this part seems incomplete)
              Text(
                'Hot Picks',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'see all',
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
            ],
            // Other elements can be added here, such as the search bar and categories
          ),
          const SizedBox(height: 10),
          Expanded(
              child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ProductTile(
                      shoe: Shoe(
                        picture: 'lib/assets/images/sneakers (1).jpg',
                        name: 'Nike Air Max 90',
                        price: 120,
                        brand: 'nike',
                        description:
                            'The Nike Air Max 90 stays true to its OG roots with its iconic Waffle outsole, stitched overlays and classic, color-accented TPU plates. Retro colors celebrate the first generation while Max Air cushioning adds comfort to your journey.',
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
