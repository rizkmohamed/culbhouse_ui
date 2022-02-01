import 'package:clubhouse/model/room.dart';
import 'package:clubhouse/pages/roompage.dart';
import 'package:clubhouse/widgets/profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget {
  final Room room;

  const RoomCard({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => RoomPage(room: room), fullscreenDialog: true)),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.only(top: 15),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClubName(room: room),
              ClubSubject(room: room),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        height: 100,
                        child: Stack(
                          children: [
                            ProfilePicture(
                                imageUrl: room.speakers[0].image, size: 50),
                            Positioned(
                                left: 25,
                                top: 30,
                                child: ProfilePicture(
                                    imageUrl: room.speakers[1].image,
                                    size: 50)),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...room.speakers.map((e) => Text(
                                  '${e.frstname} ${e.lastname} 💬',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(fontSize: 16),
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Text.rich(
                              TextSpan(children: [
                                TextSpan(
                                    text:
                                        '${room.speakers.length + room.followers.length + room.other.length} '),
                                WidgetSpan(
                                    child: Icon(
                                  CupertinoIcons.person_circle_fill,
                                  size: 18,
                                  color: Colors.grey,
                                )),
                                TextSpan(text: ' / ${room.speakers.length} '),
                                WidgetSpan(
                                    child: Icon(
                                  CupertinoIcons.chat_bubble_fill,
                                  size: 18,
                                  color: Colors.grey,
                                )),
                              ]),
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClubSubject extends StatelessWidget {
  const ClubSubject({
    Key? key,
    required this.room,
  }) : super(key: key);

  final Room room;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${room.name} ',
      style: Theme.of(context)
          .textTheme
          .bodyText2!
          .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
    );
  }
}

class ClubName extends StatelessWidget {
  const ClubName({
    Key? key,
    required this.room,
  }) : super(key: key);

  final Room room;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${room.club} 🏠'.toUpperCase(),
      style: Theme.of(context).textTheme.overline!.copyWith(
          fontSize: 12, fontWeight: FontWeight.normal, letterSpacing: 1.0),
      
    );
  }
}
