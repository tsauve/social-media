import 'package:flutter/material.dart';

class Profile{
  String profileName;
  AssetImage profilePicture;
  
  Profile(String profileName, AssetImage profilePicture){
    this.profileName = profileName;
    this.profilePicture = profilePicture;
  }

  String getName(){
    return this.profileName;
  }

  AssetImage getPicture(){
    return this.profilePicture;
  }
}