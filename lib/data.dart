import 'package:clubhouse/model/room.dart';
import 'package:clubhouse/model/user.dart';

const User currentUser = User(
    frstname: 'rezk',
    lastname: 'mohamed',
    image:
        'https://images.unsplash.com/photo-1544348817-5f2cf14b88c8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60');
const List<User> users = [
  User(
      frstname: 'ibrahim',
      lastname: 'hasan',
      image:
          'https://images.unsplash.com/photo-1544348817-5f2cf14b88c8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'tamer',
      lastname: 'mohamed',
      image:
          'https://images.unsplash.com/photo-1541647376583-8934aaf3448a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'noha',
      lastname: 'ahmed',
      image:
          'https://images.unsplash.com/photo-1578489758854-f134a358f08b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'mariam',
      lastname: 'ahmed',
      image:
          'https://images.unsplash.com/photo-1601412436009-d964bd02edbc?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'omar',
      lastname: 'ahmed',
      image:
          'https://images.unsplash.com/photo-1541647376583-8934aaf3448a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'khaled',
      lastname: 'ahmed',
      image:
          'https://images.unsplash.com/photo-1546820389-44d77e1f3b31?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzZ8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'eman',
      lastname: 'mohamed',
      image:
          'https://images.unsplash.com/photo-1601412436009-d964bd02edbc?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'gana',
      lastname: 'ahmed',
      image:
          'https://images.unsplash.com/photo-1529218164294-0d21b06ea831?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjV8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'abrar',
      lastname: 'omar',
      image:
          'https://images.unsplash.com/photo-1609708993734-29d07306bdc7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDh8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'rezk',
      lastname: 'mohamed',
      image:
          'https://images.unsplash.com/photo-1544348817-5f2cf14b88c8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'ibrahim',
      lastname: 'hasan',
      image:
          'https://images.unsplash.com/photo-1544348817-5f2cf14b88c8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'ibrahim',
      lastname: 'hasan',
      image:
          'https://images.unsplash.com/photo-1544348817-5f2cf14b88c8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'tamer',
      lastname: 'mohamed',
      image:
          'https://images.unsplash.com/photo-1541647376583-8934aaf3448a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'noha',
      lastname: 'ahmed',
      image:
          'https://images.unsplash.com/photo-1578489758854-f134a358f08b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'mariam',
      lastname: 'ahmed',
      image:
          'https://images.unsplash.com/photo-1601412436009-d964bd02edbc?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'mariam',
      lastname: 'ahmed',
      image:
          'https://images.unsplash.com/photo-1601412436009-d964bd02edbc?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'omar',
      lastname: 'ahmed',
      image:
          'https://images.unsplash.com/photo-1567186937675-a5131c8a89ea?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'khaled',
      lastname: 'ahmed',
      image:
          'https://images.unsplash.com/photo-1546820389-44d77e1f3b31?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzZ8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'eman',
      lastname: 'mohamed',
      image:
          'https://images.unsplash.com/photo-1601412436009-d964bd02edbc?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'gana',
      lastname: 'ahmed',
      image:
          'https://images.unsplash.com/photo-1529218164294-0d21b06ea831?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjV8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'abrar',
      lastname: 'omar',
      image:
          'https://images.unsplash.com/photo-1609708993734-29d07306bdc7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDh8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  User(
      frstname: 'rezk',
      lastname: 'mohamed',
      image:
          'https://images.unsplash.com/photo-1544348817-5f2cf14b88c8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGZhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
];

final List<Room> room = [
  Room(
      club: 'flutter team',
      name: 'learn to build modern apps',
      followers: List<User>.from(users)..shuffle(),
      speakers: (List<User>.from(users)..shuffle()).getRange(0, 8).toList(),
      other: List<User>.from(users)..shuffle()),
  Room(
      club: 'حكاوي ',
      name: 'كل واحد يحكي  قصة ',
      followers: List<User>.from(users)..shuffle(),
      speakers: (List<User>.from(users)..shuffle()).getRange(0, 5).toList(),
      other: List<User>.from(users)..shuffle()),
  Room(
      club: 'prefume club',
      name: 'perfumes around the world discuss to make it',
      followers: List<User>.from(users)..shuffle(),
      speakers: (List<User>.from(users)..shuffle()).getRange(0, 6).toList(),
      other: List<User>.from(users)..shuffle()),
  Room(
      club: 'فضفضة',
      name: 'جروب للدعم النفسي',
      followers: List<User>.from(users)..shuffle(),
      speakers: (List<User>.from(users)..shuffle()).getRange(0, 9).toList(),
      other: List<User>.from(users)..shuffle()),
  Room(
      club: 'flutter team',
      name: 'learn to build modern apps',
      followers: List<User>.from(users)..shuffle(),
      speakers: (List<User>.from(users)..shuffle()).getRange(0, 4).toList(),
      other: List<User>.from(users)..shuffle()),
];
