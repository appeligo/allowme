import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare/math/mat2d.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() => runApp(AllowMe());

class AllowMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'allowme',
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'allowme'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

List<Color> exampleColors = <Color>[Colors.red, Colors.green, Colors.blue];

class _MyHomePageState extends State<MyHomePage> implements FlareController {
  void initialize(FlutterActorArtboard artboard) {
    // Find our "Num 2" shape and get its fill so we can change it programmatically.
    //FlutterActorShape shape = artboard.getNode("Num 2");
  }

  void setViewTransform(Mat2D viewTransform) {}

  bool advance(FlutterActorArtboard artboard, double elapsed) {
    // advance is called whenever the flare artboard is about to update (before it draws).
    // Return false as we don't need to be called again. You'd return true if you wanted to manually animate some property.
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*body: FlareActor("assets/allowme-4.flr",
            fit: BoxFit.contain,
            alignment: Alignment.center,
            controller: this));*/

            body: FlareActor("assets/allowme-12.flr",
                  alignment: Alignment.center,
				          isPaused: false,
                  fit: BoxFit.cover,
                  animation: "splash",
                  controller: this));
  }
}
