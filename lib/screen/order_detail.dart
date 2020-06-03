import 'package:delivery_app/screen/gmap.dart';
import 'package:delivery_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderDetail extends StatelessWidget {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(17.9806046,102.6056332);
  void _onMapCreated(GoogleMapController controller) {
  mapController = controller;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Pending ',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
            Text('10:00 2-5-2020',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
//          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: <Widget>[
              Container(
                color: greyColor,
                padding: EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Customer detail',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Text('Jonh smith',style: TextStyle(fontSize: 14)),
                leading: Icon(Icons.person,size: 20),
              ),
              ListTile(
                title: Text('Dongdork Village',style: TextStyle(fontSize: 14)),
                leading: Icon(Icons.home,size: 20),
              ),
              ListTile(
                title: Text('020 52202014',style: TextStyle(fontSize: 14),),
                leading: Icon(Icons.phone,size: 20),
              ),
              Divider(height: 2, color: primaryColor),
              Container(
                color: greyColor,
                padding: EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Order detail',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              foodDetail(),
              foodDetail(),
              Divider(height: 2),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Total',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '60000 kip',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Container(
                color: greyColor,
                padding: EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Google map',
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
//              buildMap(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ButtomButton(context),
    );
  }

  Widget ButtomButton(BuildContext context) {
    return Row(
//     child: Container(
      children: <Widget>[
        Expanded(
          child: RaisedButton(
            padding: EdgeInsets.only(top: 14, bottom: 14),
            elevation: 0,
            color: primaryColor,
            child: Text(
              'Reject',
              style: TextStyle(color: whiteColor, fontSize: 16),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        Expanded(
          child: RaisedButton(
            padding: EdgeInsets.only(top: 14, bottom: 14),
            elevation: 0,
            color: greenColor,
            child: Text(
              'Accept',
              style: TextStyle(color: whiteColor, fontSize: 16),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>progressMap()));
            },
          ),
        )
      ],
//     ),
    );
  }

  Widget buildMap() {
    return GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),

    );
  }

  Widget foodDetail() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '#1 Coco food',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          ),
          Text(
            'ຈຳນວນ 2',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          ),
          Text(
            '20000 kip',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
