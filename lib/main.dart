import 'package:flutter_web/material.dart';
import 'widgets/navbar.dart';
import 'utils/responsiveLayout.dart';

void main() => runApp(MaterialApp(
      title: 'Flutter Landing Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Montserrat'),
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFFF8FBFF),
          Color(0xFFFCFDFD),
        ])),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
                child: Column(
              children: <Widget>[NavBar(), Body()],
            ))));
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 600,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            FractionallySizedBox(
              alignment: Alignment.centerRight,
              widthFactor: .6,
              child: Image.network("assets/image_01.png", scale: .85),
            ),
            FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: .6,
              child: Padding(
                padding: EdgeInsets.only(left: 48),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Hello!",
                      style: TextStyle(
                          fontSize: 60,
                          fontFamily: "Montserrat-Regular",
                          color: Color(0xFF8591B0)),
                    ),
                    RichText(
                        text: TextSpan(
                            text: "Welcome To ",
                            style: TextStyle(
                                fontSize: 60, color: Color(0xFF8591B0)),
                            children: [
                          TextSpan(
                              text: "Britu",
                              style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87))
                        ]))
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
