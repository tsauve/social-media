import 'package:flutter/material.dart';
import 'package:social_media/Models/profile.dart';
import 'package:social_media/Models/video.dart';
import 'package:social_media/Views/post.dart';
import 'package:social_media/Views/profileView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Feed(),
    );
  }
}

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Feed"), actions: [
          IconButton(
              icon: Icon(Icons.add_box),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              })
        ]),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            getVideos()[0],
          ],
        )));
  }

  List<Widget> getVideos() {
    List<Video> videos = makeVideos();
    List<Widget> posts = [];
    posts.add(new Post(videos[0]));
    return posts;
  }

  Profile profile = new Profile(
      "Trevor Sauve", AssetImage("assets/profilepics/test_prof.jpg"));

  List<Video> makeVideos() {
    List<Video> vids = [];
    vids.add(new Video(AssetImage("assets/thumbnails/test_tn.jpg"), 10,
        "A Test Video", profile));
    return vids;
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: Center(child: getProfileView()),
    );
  }

  ProfileView getProfileView() {
    Profile profile = new Profile(
        "Trevor Sauve", AssetImage("assets/profilepics/test_prof.jpg"));
    return new ProfileView(profile: profile);
  }
}
