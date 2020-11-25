
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialite/utils/constants.dart';

import 'comment.dart';
import 'data/comments_data.dart';

class Post extends StatelessWidget {

  final dynamic itemData;

  const Post({Key key,@required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: COLOR_WHITE,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: COLOR_FONT_LIGHT,
              blurRadius: 5.0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(itemData["image"]),
                          radius: 15.0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(4.0, 0.0, 8.0, 1.0),
                            child: Text(itemData["name"],
                                style: themeData.textTheme.headline4),
                          ),
                          Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      4.0, 1.0, 6.0, 1.0),
                                  child: Text(itemData["time"],
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.w400)),
                                ),
                              ),
                              Icon(
                                Icons.supervised_user_circle,
                                size: 15.0,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.arrow_drop_down,
                          color:COLOR_GREY_BOX,
                          size: 15.0,
                        ),
                      ),
                    ),
                  ),
                ]
            ),
            Image.network("http://demo.foxthemes.net/socialitehtml/assets/images/post/img-1.jpg"),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 8.0),
                  child: Stack(
                    children: [
                      Padding(
                        padding:
                        const EdgeInsets.fromLTRB(19.0, 2.0, 0.0, 0.0),
                        child: Image.network(
                            "http://demo.foxthemes.net/socialitehtml/assets/images/icons/reactions_love.png",
                            width: 20.0),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border:
                            Border.all(width: 2.0, color: Colors.white),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Image.network(
                            "http://demo.foxthemes.net/socialitehtml/assets/images/icons/reactions_like.png",
                            width: 20.0),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(4.0, 1.0, 8.0, 0.0),
                  child: Text(itemData["likes"].toString()),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(itemData["comments"].toString()+" Comments"),
                )
              ],
            ),
            Container(
              height: 0.4,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
              decoration: BoxDecoration(color: Colors.black26),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.thumb_up_outlined,size: 18.0,),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(itemData["likes"].toString()),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.favorite_outline,size: 18.0,),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(itemData["fav"].toString()),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.share_outlined,size: 18.0,),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(itemData["comments"].toString()),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.bookmark_border,size: 18.0,),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(itemData["bookmarks"].toString()),
                      ),
                    ],
                  ),
                ],),
            ),
            Container(
              height: 0.4,
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5),
              decoration: BoxDecoration(color: Colors.black26),
            ),
            Column(
              children: COMMENT_DATA.map((comment) => CommentOne(data : comment)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}