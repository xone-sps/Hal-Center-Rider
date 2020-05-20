import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class progressMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('On Delivery'),
      ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: CameraPosition(
                target: LatLng(37.77483, -122.41942), zoom: 12),
          ),
//          Container(
//            alignment: Alignment.bottomCenter,
//            padding: EdgeInsets.only(bottom: 32),
//            child: Text('Country'),
//          )
        ],
      ),
      bottomNavigationBar: ProgressIndicatorDemo(),
    );
  }
}

class ProgressIndicatorDemo extends StatefulWidget {
  @override
  _ProgressIndicatorDemoState createState() =>
      new _ProgressIndicatorDemoState();
}
class _ProgressIndicatorDemoState extends State<ProgressIndicatorDemo>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.repeat();
  }
  @override
  void dispose() {
    controller.stop();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Container(
          child:  LinearProgressIndicator( value:  animation.value,),
        )
    );
  }

}
