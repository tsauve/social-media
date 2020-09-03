import 'package:flutter/material.dart';
import 'package:social_media/Models/profile.dart';

class Video{
  AssetImage thumbnail;
  int viewCount;
  DateTime uploadDate;
  String videoTitle;
  Profile profile;

  Video(AssetImage thumbnail, int viewCount, String videoTitle, Profile profile) {
    this.thumbnail = thumbnail;
    this.viewCount = viewCount;
    this.videoTitle = videoTitle;
    this.profile = profile;
  }

  String getViewCount(){
    return viewCount.toString();
  }
}