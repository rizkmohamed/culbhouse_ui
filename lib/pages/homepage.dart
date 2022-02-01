import 'package:clubhouse/constants.dart';
import 'package:clubhouse/data.dart';
import 'package:clubhouse/widgets/profile_image.dart';
import 'package:clubhouse/widgets/roomcard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(CupertinoIcons.envelope_fill)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.calendar)),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.bell),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
            child: ProfilePicture(imageUrl: currentUser.image, size: 30),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(30),
            children: [...room.map((e) => RoomCard(room: e))],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
                    Theme.of(context).scaffoldBackgroundColor
                  ])),
            ),
          ),
          Positioned(
            bottom: 40,
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.all(10),
                    primary: Theme.of(context).accentColor),
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  size: 20,
                ),
                label: Text(
                  'Start a room',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: kWhite),
                )),
          )
        ],
      ),
    );
  }
}
