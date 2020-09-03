import 'package:flutter/material.dart';
import 'package:social_media/Models/video.dart';
import 'package:social_media/Models/profile.dart';

class Post extends StatelessWidget {
  Post({this.video});

  final Video video;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Row(children: <Widget>[
          Image(image: video.thumbnail, width: 150),
          SizedBox(
            width: 50,
          ),
          Column(
            children: <Widget>[
              Text(video.videoTitle),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: video.profile.profilePicture,
                  ),
                  SizedBox(width: 10),
                  Text(video.profile.profileName),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(video.getViewCount() + " views"),
              SizedBox(
                height: 10,
              ),
              Text("Video posted yesterday"),
            ],
          )
        ]));
  }
}
