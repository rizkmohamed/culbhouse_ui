
import 'package:clubhouse/constants.dart';
import 'package:clubhouse/widgets/profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomProfilePicture extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double size;
  final bool isnew;
  final bool ismuted;

  const RoomProfilePicture({
    Key? key,
    required this.imageUrl,
    required this.name,
    this.size = 100,
    this.isnew = false,
    this.ismuted = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                child: ProfilePicture(imageUrl: imageUrl, size: size),
              ),
              if (isnew)
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: kWhite,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 4,
                          ),
                        ]),
                    child: Text(
                      '🎉',
                      style: TextStyle(fontSize: size / 5),
                    ),
                  ),
                ),
              if (ismuted)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: kWhite,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 4,
                          ),
                        ]),
                    child: Icon(
                      CupertinoIcons.mic_slash_fill,
                      size: size / 5,
                    ),
                  ),
                ),
            ],
          ),
          Flexible(child: Text('$name', overflow: TextOverflow.ellipsis))
        ],
      ),
    );
  }
}
