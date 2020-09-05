import 'package:flutter/material.dart';

class Profile {
  final String profileName;
  final AssetImage profilePicture;
  final String tagline;

  Profile(this.profileName, this.profilePicture, this.tagline);

  String getName() {
    return this.profileName;
  }

  String getTagline() {
    return this.tagline;
  }

  AssetImage getPicture() {
    return this.profilePicture;
  }
}
