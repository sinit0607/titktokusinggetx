import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/views/screens/add_video_screen.dart';
import 'package:tiktok/views/screens/banking_page.dart';
import 'package:tiktok/views/screens/profile_screen.dart';
import 'package:tiktok/views/screens/search_screen.dart';
import 'package:tiktok/views/screens/video_screen.dart';

import 'controllers/auth_controller.dart';


List pages = [
  VideoScreen(),
  SearchScreen(),
  const AddVideoScreen(),
  Bankingpage(),
  ProfileScreen(uid: authController.user.uid),
];

// COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.white;

// FIREBASE
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// CONTROLLER
var authController = AuthController.instance;
