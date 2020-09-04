import 'package:flutter/material.dart';

class Profile {
  final String profileName;
  final AssetImage profilePicture;
  final String tagline;

  Profile(this.profileName, this.profilePicture,
      {this.tagline = "Welcome to my youry"});

  String getName() {
    return this.profileName;
  }

  AssetImage getPicture() {
    return this.profilePicture;
  }
}
