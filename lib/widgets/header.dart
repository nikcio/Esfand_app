import 'package:esfandapp/themes/darkColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  final level;

  Header({this.level});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80,
        child: Row(children: [
//          Expanded(
//            flex: 2,
//            child: Container(),
//          ),
          Expanded(
//            flex: 2,
            child: Container(
              child: Image(image: AssetImage("assets/logo70x70.png")),
            ),
          ),
//TODO Implement levels & remove comments above
//          Expanded(
//            flex: 2,
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: [
//                Align(
//                  alignment: Alignment.center,
//                  child: Text("Novice"),
//                ),
//                Container(
//                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//                    child: Stack(
//                      children: [
//                        ClipRRect(
//                          borderRadius: BorderRadius.all((Radius.circular(10))),
//                          child: LinearProgressIndicator(
//                            minHeight: 13,
//                            backgroundColor: lvlBarBackgroundColor,
//                            valueColor: AlwaysStoppedAnimation<Color>(
//                                lvlBarForegroundColor),
//                            value: 0.5,
//                          ),
//                        ),
//                        Container(
//                          padding: EdgeInsets.all(2),
//                          margin: EdgeInsets.only(left: 3),
//                          alignment: Alignment.centerLeft,
//                          child: Text(
//                            "1",
//                            style: TextStyle(
//                                fontSize: 10, fontWeight: FontWeight.w800),
//                          ),
//                        )
//                      ],
//                    )),
//              ],
//            ),
//          )
        ]),
      ),
    );
  }
}
