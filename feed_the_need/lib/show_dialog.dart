//import 'dart:io';
//
//import 'package:feed_the_need/image_selector.dart';
//import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
//
//final key = new GlobalKey<_ShowDialogBoxState>();
//
//class ShowDialogBox extends StatefulWidget {
//  ShowDialogBox({Key key}) : super(key: key);
//
//  @override
//  _ShowDialogBoxState createState() => _ShowDialogBoxState();
//}
//
//class _ShowDialogBoxState extends State<ShowDialogBox> {
//  var imageSource;
//
//  File get getImageSource => imageSource;
//
//  @override
//  Widget build(BuildContext context) {
//    return showDialog(context: null)
//  }
//
//  SimpleDialogOption _imageSourceOption(
//      IconData icon, String sourceLabel, ImageSource source) {
//    return SimpleDialogOption(
//      child: Row(
//        children: <Widget>[Icon(icon), Text(sourceLabel)],
//      ),
//      onPressed: () {
//        imageSource = ImageSelector.getImageFile(source);
//      },
//    );
//  }
//}
