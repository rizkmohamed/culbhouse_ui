import 'package:clubhouse/model/user.dart';

class Room {
  final String club;
  final String name;
  final List<User> speakers;
  final List<User> followers;
  final List<User> other;

  Room({
    required this.club,
    required this.name,
    this.speakers = const [],
    this.followers = const [],
    this.other = const [],
  });
}
