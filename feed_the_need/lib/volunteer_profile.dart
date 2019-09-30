import 'dart:io';

import 'package:feed_the_need/image_selector.dart';
import 'package:feed_the_need/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class VolunteerProfilePage extends StatefulWidget {
  @override
  _VolunteerProfilePageState createState() => _VolunteerProfilePageState();
}

class _VolunteerProfilePageState extends State<VolunteerProfilePage> {
  var imageSource;
  File image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Volunteer Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _selectProfileImage(),
          ],
        ),
      ),
    );
  }

  Widget _selectProfileImage() {
    return Center(
      child: Stack(
        alignment: const Alignment(0.9, 0.9),
        children: <Widget>[
          Container(
            height: 50.0,
            width: 50.0,
            child: imageSource == null
                ? Image.asset("assets/images/user.png")
                : Image.file(image),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
          ),
//          CircleAvatar(
//            backgroundImage: image,
//            radius: 50.0,
//          ),
          Container(
            height: 30.0,
            width: 30.0,
            child: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () async {
                await showDialog(
                  context: context,
                  builder: (_) => SimpleDialog(
                    title: const Text("Select Profile Pic"),
                    children: <Widget>[
                      _imageSourceOption(
                          Icons.camera_alt, "Camera", ImageSource.camera),
                      _imageSourceOption(
                          Icons.photo_library, "Gallery", ImageSource.gallery),
                    ],
                  ),
                );
              },
            ),
            alignment: Alignment.bottomRight,
          ),
        ],
      ),
    );
  }

  SimpleDialogOption _imageSourceOption(
      IconData icon, String sourceLabel, ImageSource source) {
    return SimpleDialogOption(
      child: Row(
        children: <Widget>[Icon(icon), Text(sourceLabel)],
      ),
      onPressed: () {
        imageSource = ImageSelector.getImageFile(source);
        setState(() {
          image = imageSource;
        });
      },
    );
  }
}
