import 'package:flutter/material.dart';
import 'package:social_media/Models/video.dart';
import 'package:social_media/Models/profile.dart';

class Post extends StatelessWidget {
  final Video video;

  Post(this.video);

  @override
  Widget build(BuildContext context) {
    return videoInfo();
  }

  Widget videoInfo() {
    return Card(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(children: <Widget>[
        videoThumbnail(),
        horizontalSpacing(),
        Column(
          children: <Widget>[
            videoTitle(),
            verticalSpacing(),
            Row(
              children: <Widget>[
                profilePicture(),
                horizontalSpacing(10),
                profileName(),
              ],
            ),
            verticalSpacing(),
            viewCount(),
            verticalSpacing(),
            timestamp(),
          ],
        )
      ]),
      elevation: 5,
    );
  }

  Widget horizontalSpacing([double spacing = 50]) {
    return SizedBox(
      width: spacing,
    );
  }

  Widget verticalSpacing([double spacing = 10]) {
    return SizedBox(
      height: spacing,
    );
  }

  Widget videoThumbnail() {
    return Container(child: Image(image: video.thumbnail, width: 150));
  }

  Widget videoTitle() {
    return Text(video.videoTitle);
  }

  Widget profilePicture() {
    return CircleAvatar(
      backgroundImage: video.profile.profilePicture,
    );
  }

  Widget profileName() {
    return Text(video.profile.profileName);
  }

  Widget viewCount() {
    return Text(video.getViewCount() + " views");
  }

  Widget timestamp() {
    return Text("Video posted yesterday");
  }
}
