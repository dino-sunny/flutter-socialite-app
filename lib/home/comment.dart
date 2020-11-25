import 'package:bubble/bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommentOne extends StatelessWidget {

  final dynamic data;

  const CommentOne({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'),
              radius: 15.0,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 100.0,
                child: Bubble(
                  margin: BubbleEdges.only(bottom: 5,top: 5,left: 5),
                  color:  const Color(0xfff1f3f4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data["name"], style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                      Text(data["comment"],style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),)
                    ],
                  ),
                  nipOffset: 5,
                  nipWidth: 5,
                  nip: BubbleNip.leftTop,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0, bottom: 8.0),
                child: Row(
                  children: [
                    Icon(Icons.thumb_up_outlined,size: 18.0,),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text("Like"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('Reply'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('3d'),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}