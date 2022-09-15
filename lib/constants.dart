import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:tinder/controllers/auth_controller.dart';
import 'package:tinder/views/screens/add_video_screen.dart';
import 'package:tinder/views/screens/video_screen.dart';

List pages = [
  VideoScreen(),
  Text('Profile'),
  AddVideoScreen(),
  Text('2'),
  Text('3'),
];

const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// firebase
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

//controller
var authController = AuthContorller.instance;
