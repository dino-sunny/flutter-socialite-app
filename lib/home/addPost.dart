import 'package:flutter/material.dart';
import 'package:socialite/utils/constants.dart';

class AddPost extends StatefulWidget {
  @override
  _AddPostState createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: COLOR_WHITE,
          boxShadow: [
            BoxShadow(
              color: COLOR_FONT_LIGHT,
              blurRadius: 3.0,
            )
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0,8,0,0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                    radius: 21.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 10.0),
                    decoration: BoxDecoration(
                        color: const Color(0xfff1f3f4),
                        borderRadius: BorderRadius.circular(25)),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "What's Your Mind ? Dennis!",
                        contentPadding: const EdgeInsets.only(left: 16.0, bottom: 6.0, top: 6.0, right: 14.0),
                      ),
                      style: TextStyle(
                        fontSize: 15.0,
                        color: COLOR_BLACK,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 0.4,
              margin: EdgeInsets.fromLTRB(12.0, 10.0, 15.0, 10.0),
              decoration: BoxDecoration(color: COLOR_FONT_LIGHT),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: PicPhotoVideo(),
                ),
                Expanded(
                  child: AddActivity(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AddActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
        margin: EdgeInsets.fromLTRB(0,0,10,12),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: Text("😲",style: TextStyle(fontSize: 24.0)),
            ),
            Text("Feeling/Activity",style: themeData.textTheme.headline5,),
          ],
        )
    );
  }
}

class PicPhotoVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(14,0,0,12),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 6.0),
            child: Icon(Icons.image,size: 25.0, color: Colors.blue),
          ),
          Text("Photo/Video",
              style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w300,color: Colors.grey)),
        ],),
    );
  }
}
