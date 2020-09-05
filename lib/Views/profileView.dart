import 'package:flutter/material.dart';
import 'package:social_media/Models/profile.dart';
import 'package:social_media/Models/video.dart';
import 'package:social_media/Views/post.dart';
import 'package:social_media/main.dart';

class ProfileView extends StatelessWidget {
  final Profile profile;

  ProfileView(this.profile);

  @override
  Widget build(BuildContext context) {
    return renderProfilePage();
  }

  Widget renderProfilePage() {
    return Container(
      width: 217,
      height: 217,
      child: Column(
        children: <Widget>[
          profilePicture(),
          Text(profile.getTagline()),
        ],
      ),
    );
  }

  Widget profilePicture() {
    return CircleAvatar(
      backgroundImage: profile.getPicture(),
      radius: 75,
    );
  }
}
