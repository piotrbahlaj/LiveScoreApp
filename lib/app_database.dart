import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:live_score/core/models/database_models/match_database.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'app_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(
    () async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'app_database.sqlite'));
      if (Platform.isAndroid) {
        await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
      }
      final cachebase = (await getTemporaryDirectory()).path;
      sqlite3.tempDirectory = cachebase;
      return NativeDatabase.createInBackground(file);
    },
  );
}

@DriftDatabase(tables: [Match])
class AppDatabase extends _$AppDatabase {
  static final AppDatabase _instance = AppDatabase._internal();
  AppDatabase._internal() : super(_openConnection());
  factory AppDatabase() {
    return _instance;
  }

  @override
  int get schemaVersion => 1;

  Future<int> cacheMatch(MatchCompanion entry) {
    return into(match).insert(entry);
  }

  Future<List<MatchData>> loadCachedMatches() {
    return select(match).get();
  }

  Future<int> deleteMatch(int id) async {
    return await (delete(match)
          ..where(
            (tbl) => tbl.id.equals(id),
          ))
        .go();
  }

  Stream<List<MatchData>> watchEntries(int id) {
    return (select(match)
          ..where(
            (tbl) => tbl.id.equals(id),
          ))
        .watch();
  }
}
