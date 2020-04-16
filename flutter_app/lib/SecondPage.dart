import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/CustomButton.dart';
import 'package:flutterapp/tabBar.dart';

import 'DiagonalClip.dart';


class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SecondPageState();
  }
}

class SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(14, 13, 21, 1),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.55,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://images.squarespace-cdn.com/content/v1/5a95ed7445776e843748e7ab/1584030101344-PL30TFHPWV2N5DH02AYD/ke17ZwdGBToddI8pDm48kHem505q6McQd8XRhQc9zkRZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpxpEURhgSBEh9ILe0HKIG3CcOCklsxWwam3CdWF6Xw7jwVv5P97BEtB5XaVnmvMtTA/image-asset.jpeg"),
                    fit: BoxFit.fill
                )

            ),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 300.0),
            child: Container(
              alignment: Alignment.center,
              child: ClipPath(
                clipper: RoundedDiagonalPathClipper(),
                child: Container(
                  height: 320,
                  width: MediaQuery.of(context).size.width ,
                  child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 35.0, left: 40),
                            child: Text("Menta Cocktail", style: TextStyle(fontSize: 24, color: Colors.white70)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0, left: 40),
                            child: Text("Bla-bla", style: TextStyle(fontSize: 12, color: Colors.grey)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0, left: 10),
                            child: CustomTabBar(
                              gap: 0,
                              activeColor: Colors.white,
//                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              duration: Duration(milliseconds: 800),
                              color: Colors.white70,
                              tabs: [
                                GButton(text: "15%", text2: "papam",),
                                GButton(text: '25%', text2: "param"),
                                GButton(text: '60%', text2: "papam"),
                              ],
                              selectedIndex: 0,
                              onTabChange: (index) {

                              },
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0, left: 40, right: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                CustomButton("\$\ 8", "Pass a Bla", false),
                                CustomButton("\$\ 16", "Total Price", true),
                              ],
                            ),
                          )
                        ],
                      )
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(35.0)),
                    color: Color.fromRGBO(29, 31, 44, 1),
                  ),

                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 23),
              child: Container(
                  height: 150,
                  width: 85,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromRGBO(70, 71, 90, 1),
                  ),

                  child: Column(
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: RaisedButton(
                          color: Colors.black54,
                          shape: CircleBorder(),
                          child: Text("+", style: TextStyle(fontSize: 20, color: Colors.grey)),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: Center(child: Text("2", style: TextStyle(color: Colors.white70, fontSize: 18))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: RaisedButton(
                          color: Colors.black54,
                          shape: CircleBorder(),
                          child: Text("-", style: TextStyle(fontSize: 20, color: Colors.grey)),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    height: 160,
                    width: 110,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Total Order", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Icon(Icons.people_outline,color: Colors.white70, size: 60,),
                        ),
                        Text("Bla-bla-bla", style: TextStyle(color: Colors.white12, fontSize: 10),),
                      ],
                    ),
                  ),
                Container(
                  height: 160,
                  width: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.only(top: 75, bottom: 5),
                        child: Text("\$32", style: TextStyle(color: Colors.white, fontSize: 28),),
                      ),
                      Text("Bla-bla-bla", style: TextStyle(color: Colors.white12, fontSize: 10),),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 23.0),
                  child: Container(
                      height: 160,
                      width: 85,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(70, 71, 90, 1),
                      ),

                      child: Column(
                        children: <Widget>[

                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Container(
                              height: 30,
                              child: Image.network("https://cached.imagescaler.hbpl.co.uk/resize/scaleWidth/743/cached.offlinehbpl.hbpl.co.uk/news/OMC/Mastercardlogo-20190108104918406.jpeg"),
                            )
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              child: Center(child: Text("Mastercard", style: TextStyle(color: Colors.white70, fontSize: 13, fontStyle: FontStyle.italic))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text("Pay", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),)
                          ),
                        ],
                      ),
                    ),
                ),
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 180.0),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          backgroundColor: Color.fromRGBO(29, 29, 43, 1),
          child: Icon(Icons.arrow_back_ios, color: Colors.white70,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }

}
