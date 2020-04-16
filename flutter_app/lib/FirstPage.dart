import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/NavBar.dart';
import 'package:flutterapp/SecondPage.dart';

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FirsPageState();
  }
}

class FirsPageState extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(29, 31, 44, 1),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 30),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: Text("Tonight", style: TextStyle(fontSize: 32, color: Colors.white)),
                            ),
                            Text("Monday, November 23", style: TextStyle(fontSize: 14, color: Colors.grey)),
                          ],
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.3),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        height: 130,
                        width: 90,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(child: Icon(Icons.wb_incandescent, size: 40, color: Colors.grey)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Icon(Icons.credit_card, size: 18, color: Colors.grey),
                                  Text(" 32", style: TextStyle(fontSize: 22, color: Colors.white70))
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text("Bla-bla-bla", style: TextStyle(fontSize: 8, color: Colors.white70)),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10),
              child: GNav(
                gap: 0,
                activeColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                duration: Duration(milliseconds: 800),
                color: Colors.white70,
                tabs: [
                  GButton(
                    text: 'Promotion',
                  ),
                  GButton(
                    text: 'Likes',

                  ),
                  GButton(
                    text: 'Happy',
                  ),
                ],
                selectedIndex: 0,
                onTabChange: (index) {

                },
              ),
            ),
            Expanded(

//              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height - 355,
                    width: MediaQuery.of(context).size.width - 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        image: DecorationImage(
                          image: NetworkImage("https://mfiles.alphacoders.com/680/680939.jpg"),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 30.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
                      },
                      child: Container(
                        alignment: Alignment.topLeft,
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromRGBO(29, 31, 44, 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("30", style: TextStyle(color: Colors.white70, fontSize: 24)),
                                Icon(Icons.whatshot, color: Colors.grey, size: 8,)
                              ],
                            ),
                            Text("Bla-bla-bla", style: TextStyle(fontSize: 8, color: Colors.white70),)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 430.0, left: 30.0),
                    child: Container(
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Blackberry", style: TextStyle(color: Colors.white, fontSize: 25)),
                          Text("Fresh Drink", style: TextStyle(color: Colors.grey, fontSize: 12))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),

      ),
      bottomNavigationBar: CubertoBottomBar(
        padding: EdgeInsets.all(20),
        barBorderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        barBackgroundColor: Color.fromRGBO(14, 13, 21, 1),
        inactiveIconColor: Colors.white30,
        tabStyle: CubertoTabStyle.STYLE_FADED_BACKGROUND,
        selectedTab: 0,
        tabs: [
          TabData(
              iconData: Icons.wifi_tethering,
              title: "Home",
              tabColor: Colors.white70,
              onclick: () {

              }
          ),
          TabData(
              iconData: Icons.assignment,
              title: "",
              tabColor: Colors.white70,
              onclick: () {

              }
          ),
          TabData(
              iconData: Icons.search,
              title: "Alarm",
              tabColor: Colors.white70,
              onclick: () {

              }
          ),
        ],
        onTabChangedListener: (position, title, color) {
          setState(() {
            MaterialPageRoute(builder: (context) => SecondPage());

//              currentPage = position;
//              currentTitle = title;
//              currentColor = color;
          });
        },
      ),
    );
  }

}
