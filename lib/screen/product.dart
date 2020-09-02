import 'package:delivery_app/model/order_model.dart';
import 'package:delivery_app/shared/colors.dart';
import 'package:delivery_app/widgit/Alert.dart';
import 'package:delivery_app/widgit/sliver_header.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter/services.dart';

class Product extends StatefulWidget {
  const Product({Key key, this.newOrder}) : super(key: key);
  final Order newOrder;

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  Widget _buildProductWidget(Color color, String text, image) {
    return Container(
      color: color,
      child: Center(
        child: Row(
          children: <Widget>[
            Container(width: 180, child: Image.network(image)),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            Divider(height: 10, color: Colors.black),
          ],
        ),
      ),
    );
  }

  Widget _orderCard(
      BuildContext context, String image, quatity, productName, price, desc) {
    return InkWell(
      onTap: () {
        showAlertDialog(context);
      },
      child: Card(
        margin: EdgeInsets.only(top: 10, right: 4, left: 4),
        child: Row(
//          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: 120,
//            width: MediaQuery.of(context).size.width,
                  child: FadeInImage.memoryNetwork(
                      fit: BoxFit.cover,
                      placeholder: kTransparentImage,
                      image: image),
                ),
                Positioned(
                  left: 90,
                  right: 0,
                  top: 4,
                  child: Container(
                    height: 20,
                    width: 10,
//                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(4),
                    color: primaryColor,
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(4),
//                      color: Colors.white
//                    ),
                    child: Center(
                      child: Text(
                        quatity,
                        style: TextStyle(
                            fontSize: 11,
                            color: whiteColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 6),
              padding: EdgeInsets.only(top: 4, bottom: 4, right: 8),
//              width: MediaQuery.of(context).size.width,
              width: 255,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    productName,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'LAK',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          price,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: primaryColor),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text(
                                desc,
                                style: TextStyle(fontSize: 12),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            brightness: Brightness.light,
            title: Text('My Product'),
            backgroundColor: primaryColor,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://cdn.pixabay.com/photo/2016/03/09/09/42/buildings-1245953_960_720.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          CurrySliverHeader(primaryColor, 'Sabaidee Shop',
              'sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. '),
          SliverFixedExtentList(
            itemExtent: 100,
            delegate: SliverChildListDelegate([
//              _buildProductWidget(Colors.white, 'Product 1','https://chefjet.com/wp-content/uploads/2017/06/Jet-Tila-Thai-Chicken-Curry.jpg'),
//              _buildProductWidget(Colors.white, 'Product 2','https://cdn.pixabay.com/photo/2014/05/02/21/49/home-office-336373_960_720.jpg'),
//              _buildProductWidget(Colors.white, 'Product 3','https://chefjet.com/wp-content/uploads/2017/06/Jet-Tila-Thai-Chicken-Curry.jpg'),
//              _buildProductWidget(Colors.white, 'Product 4','https://cdn.pixabay.com/photo/2016/02/19/10/00/laptop-1209008_960_720.jpg'),
//              _buildProductWidget(Colors.white, 'Product 5','https://cdn.pixabay.com/photo/2016/02/19/11/19/computer-1209641_960_720.jpg'),
              _orderCard(
                  context,
                  'https://cdn.pixabay.com/photo/2014/09/24/14/29/mac-459196_960_720.jpg',
                  '10',
                  'Mack Book Pro 2020',
                  '12,000,000',
                  'sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.'),
              _orderCard(
                  context,
                  'https://ak1.ostkcdn.com/images/products/is/images/direct/d2b911dba2e3c77f9f579568d7e8fea3e0575173/15%22-Apple-MacBook-Pro-Retina-2.3GHz-Quad-Core-i7.jpg',
                  '10',
                  'Mack Book Pro 2019',
                  '11,000,000',
                  'sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.'),
              _orderCard(
                  context,
                  'https://ak1.ostkcdn.com/images/products/is/images/direct/624fec7c477b44081417924502789c5b722fe6d4/Apple-MacBook-Pro-ME874LL-A-Intel-Core-i7-4960HQ-X4-2.6GHz-16GB-1TB%2CSilver%28Certified-Refurbished%29.jpg',
                  '10',
                  'Mack Book Pro 2018',
                  '10,000,000',
                  'sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.'),
              _orderCard(
                  context,
                  'https://cdn.pixabay.com/photo/2014/09/24/14/29/mac-459196_960_720.jpg',
                  '10',
                  'Mack Book Pro 2020',
                  '12,000,000',
                  'sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.'),
              _orderCard(
                  context,
                  'https://ak1.ostkcdn.com/images/products/is/images/direct/624fec7c477b44081417924502789c5b722fe6d4/Apple-MacBook-Pro-ME874LL-A-Intel-Core-i7-4960HQ-X4-2.6GHz-16GB-1TB%2CSilver%28Certified-Refurbished%29.jpg',
                  '10',
                  'Mack Book Pro 2018',
                  '10,000,000',
                  'sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.'),
              bestSeller(),
            ]),
          )
        ],
      ),
    );
  }

  Widget bestSeller() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.only(left: 8, right: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: whiteColor),
//      color: whiteColor,
      child: Row(
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Text('You Have'),
//                Text(
//                  '200 like',
//                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
//                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: 'You Have',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: '\n200 like',
                          style: TextStyle(
                              color: Colors.grey,
                              fontStyle: FontStyle.italic,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 20),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.greenAccent[100].withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text('Today sale'),
            ),
          ),
        ],
      ),
    );
  }
}
