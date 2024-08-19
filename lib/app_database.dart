import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'app_database.g.dart';

class Match extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get homeTeam => text()();
  TextColumn get awayTeam => text()();
  IntColumn get homeScore => integer().nullable()();
  IntColumn get awayScore => integer().nullable()();
  DateTimeColumn get matchDate => dateTime()();
  BoolColumn get isFavorite => boolean().withDefault(const Constant(false))();
}

@DriftDatabase(tables: [Match])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_database.sqlite'));
    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }
    final cachebase = (await getTemporaryDirectory()).path;
    sqlite3.tempDirectory = cachebase;
    return NativeDatabase.createInBackground(file);
  });
}
