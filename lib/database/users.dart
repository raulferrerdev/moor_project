import 'package:moor/moor.dart';

part 'users.g.dart';

class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get username => text()();
  TextColumn get mail => text()();
  TextColumn get country => text()();
  TextColumn get language => text()();
}
