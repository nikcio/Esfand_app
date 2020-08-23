import 'package:esfandapp/globalValues.dart';
import 'package:esfandapp/widgets/header.dart';
import 'package:esfandapp/widgets/notificationList/cardList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Widget> notificationTab = [
Header(level: level,),
  Expanded(child: CardList(),)
];
