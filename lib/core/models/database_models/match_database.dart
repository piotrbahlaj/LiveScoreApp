import 'package:drift/drift.dart';

class Match extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get homeTeam => text()();
  TextColumn get awayTeam => text()();
  TextColumn get status => text()();
  IntColumn get homeScore => integer().nullable()();
  IntColumn get awayScore => integer().nullable()();
  TextColumn get matchDate => text()();
  BoolColumn get isFavorite => boolean().withDefault(const Constant(false))();
  TextColumn get homeLogo => text().nullable()();
  TextColumn get awayLogo => text().nullable()();
}
