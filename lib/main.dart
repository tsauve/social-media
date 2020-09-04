import 'package:flutter/material.dart';
import 'package:social_media/Models/profile.dart';
import 'package:social_media/Models/video.dart';
import 'package:social_media/Views/post.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Title"),
        ),
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
