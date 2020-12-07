import 'package:flutter_twitter_clone/shop/app_properties.dart';
import 'package:flutter_twitter_clone/shop/models/product.dart';
import 'package:flutter_twitter_clone/shop/screens/product/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class RecommendedList extends StatelessWidget {
  List<Product> products = [
    Product('assets/bag_1.png', 'Dumbles', 'Weight and overcome weight', 2.33),
    Product('assets/cap_5.png', 'Gym ware', 'Cloth with beautiful design', 10),
    Product('assets/jeans_1.png', 'Gym stepper', 'Stepper Where you can Step', 20),
    Product('assets/womanshoe_3.png', 'Rods', 'Unbreakable Rods', 30),
    Product('assets/bag_10.png', 'Heavy Dumbles ', 'Weight and overcome weight', 40),
    Product('assets/jeans_3.png', 'Gym ware', 'Step up Step lower', 102.33),
    Product('assets/ring_1.png', 'Stationary Cycle', 'Description', 52.33),
    Product('assets/shoeman_7.png', 'Gym bench', 'Description', 62.33),
    Product('assets/headphone_9.png', 'Tredmill', 'Description', 72.33),


  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              IntrinsicHeight(
                child: Container(
                  margin: const EdgeInsets.only(left: 16.0, right: 8.0),
                  width: 4,
                  color: mediumYellow,
                ),
              ),
              Center(
                  child: Text(
                'Recommended',
                style: TextStyle(
                    color: darkGrey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              )),
            ],
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
            child: StaggeredGridView.countBuilder(
    physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              crossAxisCount: 4,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) => new ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: InkWell(
                      onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => ProductPage(product:products[index]))),
                      child: Container(
                          decoration: BoxDecoration(
                            gradient: RadialGradient(
                                colors: [Colors.grey[500], Colors.grey[700]],
                                center: Alignment(0, 0),
                                radius: 0.6,
                                focal: Alignment(0, 0),
                                focalRadius: 0.1),
                          ),
                          child: Hero(
                              tag: products[index].image,
                              child: Image.asset(products[index].image))),
                    ),
                  ),
              staggeredTileBuilder: (int index) =>
                  new StaggeredTile.count(2, index.isEven ? 3 : 2),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
          ),
        ),
      ],
    );
  }
}
