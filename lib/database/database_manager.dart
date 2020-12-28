import 'dart:io';

import 'package:moor/moor.dart';
import 'package:moor/ffi.dart';
import 'package:moor_project/database/users.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database_manager.g.dart';

LazyDatabase openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [Users])
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;
}