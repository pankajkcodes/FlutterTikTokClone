import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:tiktokclone/views/fragments/add_video_fragment.dart';
import 'package:tiktokclone/views/fragments/home_fragment.dart';
import 'package:tiktokclone/views/fragments/message_fragment.dart';
import 'package:tiktokclone/views/fragments/profile_fragment.dart';
import 'package:tiktokclone/views/fragments/search_fragment.dart';

import '../controllers/auth_controller.dart';

List pages = [
  const HomeFragment(),
  const SearchFragment(),
  const AddVideoFragment(),
  const MessageFragment(),
  const ProfileFragment()
  // Text("ProfileScreen(uid: authController.user.uid)"),
];

const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// FIREBASE
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// CONTROLLER
var authController = AuthController.instance;
