import 'package:flutter/material.dart';
import 'package:social_media/Models/profile.dart';
import 'package:social_media/Models/video.dart';
import 'package:social_media/Views/post.dart';
import 'package:social_media/main.dart';

class ProfileView extends StatelessWidget {
  final Profile profile;

  ProfileView({this.profile});

  @override
  Widget build(BuildContext context) {
    return renderTagline();
  }

  Widget renderTagline() {
    return Container(child: Text(profile.getTagline()));
  }
}
