import 'package:flutter/material.dart';
import 'package:social_media/Models/video.dart';
import 'package:social_media/Models/profile.dart';

class Post extends StatelessWidget{
  Post({this.video});

  final Video video;

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child:Row(children: <Widget>[
      
      Column( // Vertical video thumbnail
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: video.thumbnail,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      ),
      Column( // Video information
        children: <Widget>[
          Row( // Video title
            children: <Widget>[
              Container(
                child: Text(video.videoTitle),
              ),
            ],
          ),
          Row( // Profile pic/username
            children: <Widget>[
              Container( //Profile pic
                height: 35,
                child: CircleAvatar(backgroundImage: video.profile.profilePicture),
              ),
              Container( //Username
                child: Text(video.profile.profileName),
              ),
            ],
          ),
          Row( //Views
            children: <Widget>[
              Container(
                child: Text(video.getViewCount() + " views"),
              ),
            ],
          ),
          Row( //Views
            children: <Widget>[
              Container(
                child: Text("Video posted yesterday"),
              ),
            ],
          ),
        ],
      ),
      ],
      ),
    );
  }

}