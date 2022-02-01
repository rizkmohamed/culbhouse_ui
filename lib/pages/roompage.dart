import 'dart:math';

import 'package:clubhouse/constants.dart';
import 'package:clubhouse/data.dart';
import 'package:clubhouse/model/room.dart';
import 'package:clubhouse/widgets/profile_image.dart';
import 'package:clubhouse/widgets/roomcard.dart';
import 'package:clubhouse/widgets/roomprofileimage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomPage extends StatelessWidget {
  final Room room;
  const RoomPage({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: TextButton.icon(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(CupertinoIcons.chevron_down),
            label: Flexible(
                child: Text(
              'Hallawy',
              overflow: TextOverflow.ellipsis,
            ))),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.doc,
              )),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
              child: ProfilePicture(imageUrl: currentUser.image, size: 30),
            ),
          ),
        ],
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            color: kWhite,
          ),
          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClubName(room: room),
                            ClubSubject(room: room),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(CupertinoIcons.ellipsis))
                      ],
                    ),
                  ],
                ),
              ),
              HeadLineRoom(text: 'speakers'),
              SliverPadding(
                padding: EdgeInsets.all(10),
                sliver: SliverGrid.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.8,
                  children: room.speakers
                      .map((e) => RoomProfilePicture(
                            imageUrl: e.image,
                            name: e.frstname,
                            ismuted: Random().nextBool(),
                            size: 70,
                            isnew: Random().nextBool(),
                          ))
                      .toList(),
                ),
              ),
              HeadLineRoom(
                text: 'Room Followers',
              ),
              SliverPadding(
                padding: EdgeInsets.all(10),
                sliver: SliverGrid.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.8,
                  children: room.followers
                      .map((e) => RoomProfilePicture(
                            imageUrl: e.image,
                            name: e.frstname,
                            size: 50,
                            isnew: Random().nextBool(),
                          ))
                      .toList(),
                ),
              ),
              HeadLineRoom(text: 'others'),
              SliverPadding(
                padding: EdgeInsets.all(10),
                sliver: SliverGrid.count(
                  crossAxisCount: 5,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.7,
                  children: room.other
                      .map((e) => RoomProfilePicture(
                            imageUrl: e.image,
                            name: e.frstname,
                            size: 40,
                            isnew: Random().nextBool(),
                          ))
                      .toList(),
                ),
              ),
            ],
          )),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                '✌🏽 Leave quietly',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(12),
                backgroundColor: Colors.grey[300],
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    padding: EdgeInsets.all(6),
                    child: Icon(
                      CupertinoIcons.add,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    padding: EdgeInsets.all(6),
                    child: Icon(
                      CupertinoIcons.hand_raised,
                      size: 30,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HeadLineRoom extends StatelessWidget {
  final String text;
  const HeadLineRoom({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Text(
      text.toUpperCase(),
      style: Theme.of(context).textTheme.overline!.copyWith(
          color: Colors.grey,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.0),
    ));
  }
}
