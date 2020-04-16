
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String firstString;
  final String secondString;
  final bool isActive;

  CustomButton(this.firstString, this.secondString, this.isActive);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Container(
        height: 55,
        width: 150,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromRGBO(19, 22, 31, 1),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Text("$firstString", style: TextStyle(color: isActive ? Colors.white : Colors.white30, fontSize: 17, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("$secondString", style: TextStyle(color: Colors.grey, fontSize: 15),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
