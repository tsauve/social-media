import 'package:flutter/material.dart';
import 'package:social_media/Models/profile.dart';

class Video {
  final AssetImage thumbnail;
  final int viewCount;
  //final DateTime uploadDate;
  final String videoTitle;
  final Profile profile;

  Video(this.thumbnail, this.viewCount, this.videoTitle, this.profile);

  String getViewCount() {
    return viewCount.toString();
  }
}
