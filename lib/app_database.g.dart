// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $MatchTable extends Match with TableInfo<$MatchTable, MatchData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MatchTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _homeTeamMeta =
      const VerificationMeta('homeTeam');
  @override
  late final GeneratedColumn<String> homeTeam = GeneratedColumn<String>(
      'home_team', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _awayTeamMeta =
      const VerificationMeta('awayTeam');
  @override
  late final GeneratedColumn<String> awayTeam = GeneratedColumn<String>(
      'away_team', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _homeScoreMeta =
      const VerificationMeta('homeScore');
  @override
  late final GeneratedColumn<int> homeScore = GeneratedColumn<int>(
      'home_score', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _awayScoreMeta =
      const VerificationMeta('awayScore');
  @override
  late final GeneratedColumn<int> awayScore = GeneratedColumn<int>(
      'away_score', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _matchDateMeta =
      const VerificationMeta('matchDate');
  @override
  late final GeneratedColumn<String> matchDate = GeneratedColumn<String>(
      'match_date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isFavoriteMeta =
      const VerificationMeta('isFavorite');
  @override
  late final GeneratedColumn<bool> isFavorite = GeneratedColumn<bool>(
      'is_favorite', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_favorite" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _homeLogoMeta =
      const VerificationMeta('homeLogo');
  @override
  late final GeneratedColumn<String> homeLogo = GeneratedColumn<String>(
      'home_logo', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _awayLogoMeta =
      const VerificationMeta('awayLogo');
  @override
  late final GeneratedColumn<String> awayLogo = GeneratedColumn<String>(
      'away_logo', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        homeTeam,
        awayTeam,
        status,
        homeScore,
        awayScore,
        matchDate,
        isFavorite,
        homeLogo,
        awayLogo
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'match';
  @override
  VerificationContext validateIntegrity(Insertable<MatchData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('home_team')) {
      context.handle(_homeTeamMeta,
          homeTeam.isAcceptableOrUnknown(data['home_team']!, _homeTeamMeta));
    } else if (isInserting) {
      context.missing(_homeTeamMeta);
    }
    if (data.containsKey('away_team')) {
      context.handle(_awayTeamMeta,
          awayTeam.isAcceptableOrUnknown(data['away_team']!, _awayTeamMeta));
    } else if (isInserting) {
      context.missing(_awayTeamMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('home_score')) {
      context.handle(_homeScoreMeta,
          homeScore.isAcceptableOrUnknown(data['home_score']!, _homeScoreMeta));
    }
    if (data.containsKey('away_score')) {
      context.handle(_awayScoreMeta,
          awayScore.isAcceptableOrUnknown(data['away_score']!, _awayScoreMeta));
    }
    if (data.containsKey('match_date')) {
      context.handle(_matchDateMeta,
          matchDate.isAcceptableOrUnknown(data['match_date']!, _matchDateMeta));
    } else if (isInserting) {
      context.missing(_matchDateMeta);
    }
    if (data.containsKey('is_favorite')) {
      context.handle(
          _isFavoriteMeta,
          isFavorite.isAcceptableOrUnknown(
              data['is_favorite']!, _isFavoriteMeta));
    }
    if (data.containsKey('home_logo')) {
      context.handle(_homeLogoMeta,
          homeLogo.isAcceptableOrUnknown(data['home_logo']!, _homeLogoMeta));
    }
    if (data.containsKey('away_logo')) {
      context.handle(_awayLogoMeta,
          awayLogo.isAcceptableOrUnknown(data['away_logo']!, _awayLogoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MatchData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MatchData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      homeTeam: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}home_team'])!,
      awayTeam: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}away_team'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      homeScore: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}home_score']),
      awayScore: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}away_score']),
      matchDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}match_date'])!,
      isFavorite: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_favorite'])!,
      homeLogo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}home_logo']),
      awayLogo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}away_logo']),
    );
  }

  @override
  $MatchTable createAlias(String alias) {
    return $MatchTable(attachedDatabase, alias);
  }
}

class MatchData extends DataClass implements Insertable<MatchData> {
  final int id;
  final String homeTeam;
  final String awayTeam;
  final String status;
  final int? homeScore;
  final int? awayScore;
  final String matchDate;
  final bool isFavorite;
  final String? homeLogo;
  final String? awayLogo;
  const MatchData(
      {required this.id,
      required this.homeTeam,
      required this.awayTeam,
      required this.status,
      this.homeScore,
      this.awayScore,
      required this.matchDate,
      required this.isFavorite,
      this.homeLogo,
      this.awayLogo});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['home_team'] = Variable<String>(homeTeam);
    map['away_team'] = Variable<String>(awayTeam);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || homeScore != null) {
      map['home_score'] = Variable<int>(homeScore);
    }
    if (!nullToAbsent || awayScore != null) {
      map['away_score'] = Variable<int>(awayScore);
    }
    map['match_date'] = Variable<String>(matchDate);
    map['is_favorite'] = Variable<bool>(isFavorite);
    if (!nullToAbsent || homeLogo != null) {
      map['home_logo'] = Variable<String>(homeLogo);
    }
    if (!nullToAbsent || awayLogo != null) {
      map['away_logo'] = Variable<String>(awayLogo);
    }
    return map;
  }

  MatchCompanion toCompanion(bool nullToAbsent) {
    return MatchCompanion(
      id: Value(id),
      homeTeam: Value(homeTeam),
      awayTeam: Value(awayTeam),
      status: Value(status),
      homeScore: homeScore == null && nullToAbsent
          ? const Value.absent()
          : Value(homeScore),
      awayScore: awayScore == null && nullToAbsent
          ? const Value.absent()
          : Value(awayScore),
      matchDate: Value(matchDate),
      isFavorite: Value(isFavorite),
      homeLogo: homeLogo == null && nullToAbsent
          ? const Value.absent()
          : Value(homeLogo),
      awayLogo: awayLogo == null && nullToAbsent
          ? const Value.absent()
          : Value(awayLogo),
    );
  }

  factory MatchData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MatchData(
      id: serializer.fromJson<int>(json['id']),
      homeTeam: serializer.fromJson<String>(json['homeTeam']),
      awayTeam: serializer.fromJson<String>(json['awayTeam']),
      status: serializer.fromJson<String>(json['status']),
      homeScore: serializer.fromJson<int?>(json['homeScore']),
      awayScore: serializer.fromJson<int?>(json['awayScore']),
      matchDate: serializer.fromJson<String>(json['matchDate']),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
      homeLogo: serializer.fromJson<String?>(json['homeLogo']),
      awayLogo: serializer.fromJson<String?>(json['awayLogo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'homeTeam': serializer.toJson<String>(homeTeam),
      'awayTeam': serializer.toJson<String>(awayTeam),
      'status': serializer.toJson<String>(status),
      'homeScore': serializer.toJson<int?>(homeScore),
      'awayScore': serializer.toJson<int?>(awayScore),
      'matchDate': serializer.toJson<String>(matchDate),
      'isFavorite': serializer.toJson<bool>(isFavorite),
      'homeLogo': serializer.toJson<String?>(homeLogo),
      'awayLogo': serializer.toJson<String?>(awayLogo),
    };
  }

  MatchData copyWith(
          {int? id,
          String? homeTeam,
          String? awayTeam,
          String? status,
          Value<int?> homeScore = const Value.absent(),
          Value<int?> awayScore = const Value.absent(),
          String? matchDate,
          bool? isFavorite,
          Value<String?> homeLogo = const Value.absent(),
          Value<String?> awayLogo = const Value.absent()}) =>
      MatchData(
        id: id ?? this.id,
        homeTeam: homeTeam ?? this.homeTeam,
        awayTeam: awayTeam ?? this.awayTeam,
        status: status ?? this.status,
        homeScore: homeScore.present ? homeScore.value : this.homeScore,
        awayScore: awayScore.present ? awayScore.value : this.awayScore,
        matchDate: matchDate ?? this.matchDate,
        isFavorite: isFavorite ?? this.isFavorite,
        homeLogo: homeLogo.present ? homeLogo.value : this.homeLogo,
        awayLogo: awayLogo.present ? awayLogo.value : this.awayLogo,
      );
  MatchData copyWithCompanion(MatchCompanion data) {
    return MatchData(
      id: data.id.present ? data.id.value : this.id,
      homeTeam: data.homeTeam.present ? data.homeTeam.value : this.homeTeam,
      awayTeam: data.awayTeam.present ? data.awayTeam.value : this.awayTeam,
      status: data.status.present ? data.status.value : this.status,
      homeScore: data.homeScore.present ? data.homeScore.value : this.homeScore,
      awayScore: data.awayScore.present ? data.awayScore.value : this.awayScore,
      matchDate: data.matchDate.present ? data.matchDate.value : this.matchDate,
      isFavorite:
          data.isFavorite.present ? data.isFavorite.value : this.isFavorite,
      homeLogo: data.homeLogo.present ? data.homeLogo.value : this.homeLogo,
      awayLogo: data.awayLogo.present ? data.awayLogo.value : this.awayLogo,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MatchData(')
          ..write('id: $id, ')
          ..write('homeTeam: $homeTeam, ')
          ..write('awayTeam: $awayTeam, ')
          ..write('status: $status, ')
          ..write('homeScore: $homeScore, ')
          ..write('awayScore: $awayScore, ')
          ..write('matchDate: $matchDate, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('homeLogo: $homeLogo, ')
          ..write('awayLogo: $awayLogo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, homeTeam, awayTeam, status, homeScore,
      awayScore, matchDate, isFavorite, homeLogo, awayLogo);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MatchData &&
          other.id == this.id &&
          other.homeTeam == this.homeTeam &&
          other.awayTeam == this.awayTeam &&
          other.status == this.status &&
          other.homeScore == this.homeScore &&
          other.awayScore == this.awayScore &&
          other.matchDate == this.matchDate &&
          other.isFavorite == this.isFavorite &&
          other.homeLogo == this.homeLogo &&
          other.awayLogo == this.awayLogo);
}

class MatchCompanion extends UpdateCompanion<MatchData> {
  final Value<int> id;
  final Value<String> homeTeam;
  final Value<String> awayTeam;
  final Value<String> status;
  final Value<int?> homeScore;
  final Value<int?> awayScore;
  final Value<String> matchDate;
  final Value<bool> isFavorite;
  final Value<String?> homeLogo;
  final Value<String?> awayLogo;
  const MatchCompanion({
    this.id = const Value.absent(),
    this.homeTeam = const Value.absent(),
    this.awayTeam = const Value.absent(),
    this.status = const Value.absent(),
    this.homeScore = const Value.absent(),
    this.awayScore = const Value.absent(),
    this.matchDate = const Value.absent(),
    this.isFavorite = const Value.absent(),
    this.homeLogo = const Value.absent(),
    this.awayLogo = const Value.absent(),
  });
  MatchCompanion.insert({
    this.id = const Value.absent(),
    required String homeTeam,
    required String awayTeam,
    required String status,
    this.homeScore = const Value.absent(),
    this.awayScore = const Value.absent(),
    required String matchDate,
    this.isFavorite = const Value.absent(),
    this.homeLogo = const Value.absent(),
    this.awayLogo = const Value.absent(),
  })  : homeTeam = Value(homeTeam),
        awayTeam = Value(awayTeam),
        status = Value(status),
        matchDate = Value(matchDate);
  static Insertable<MatchData> custom({
    Expression<int>? id,
    Expression<String>? homeTeam,
    Expression<String>? awayTeam,
    Expression<String>? status,
    Expression<int>? homeScore,
    Expression<int>? awayScore,
    Expression<String>? matchDate,
    Expression<bool>? isFavorite,
    Expression<String>? homeLogo,
    Expression<String>? awayLogo,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (homeTeam != null) 'home_team': homeTeam,
      if (awayTeam != null) 'away_team': awayTeam,
      if (status != null) 'status': status,
      if (homeScore != null) 'home_score': homeScore,
      if (awayScore != null) 'away_score': awayScore,
      if (matchDate != null) 'match_date': matchDate,
      if (isFavorite != null) 'is_favorite': isFavorite,
      if (homeLogo != null) 'home_logo': homeLogo,
      if (awayLogo != null) 'away_logo': awayLogo,
    });
  }

  MatchCompanion copyWith(
      {Value<int>? id,
      Value<String>? homeTeam,
      Value<String>? awayTeam,
      Value<String>? status,
      Value<int?>? homeScore,
      Value<int?>? awayScore,
      Value<String>? matchDate,
      Value<bool>? isFavorite,
      Value<String?>? homeLogo,
      Value<String?>? awayLogo}) {
    return MatchCompanion(
      id: id ?? this.id,
      homeTeam: homeTeam ?? this.homeTeam,
      awayTeam: awayTeam ?? this.awayTeam,
      status: status ?? this.status,
      homeScore: homeScore ?? this.homeScore,
      awayScore: awayScore ?? this.awayScore,
      matchDate: matchDate ?? this.matchDate,
      isFavorite: isFavorite ?? this.isFavorite,
      homeLogo: homeLogo ?? this.homeLogo,
      awayLogo: awayLogo ?? this.awayLogo,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (homeTeam.present) {
      map['home_team'] = Variable<String>(homeTeam.value);
    }
    if (awayTeam.present) {
      map['away_team'] = Variable<String>(awayTeam.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (homeScore.present) {
      map['home_score'] = Variable<int>(homeScore.value);
    }
    if (awayScore.present) {
      map['away_score'] = Variable<int>(awayScore.value);
    }
    if (matchDate.present) {
      map['match_date'] = Variable<String>(matchDate.value);
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    if (homeLogo.present) {
      map['home_logo'] = Variable<String>(homeLogo.value);
    }
    if (awayLogo.present) {
      map['away_logo'] = Variable<String>(awayLogo.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MatchCompanion(')
          ..write('id: $id, ')
          ..write('homeTeam: $homeTeam, ')
          ..write('awayTeam: $awayTeam, ')
          ..write('status: $status, ')
          ..write('homeScore: $homeScore, ')
          ..write('awayScore: $awayScore, ')
          ..write('matchDate: $matchDate, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('homeLogo: $homeLogo, ')
          ..write('awayLogo: $awayLogo')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $MatchTable match = $MatchTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [match];
}

typedef $$MatchTableCreateCompanionBuilder = MatchCompanion Function({
  Value<int> id,
  required String homeTeam,
  required String awayTeam,
  required String status,
  Value<int?> homeScore,
  Value<int?> awayScore,
  required String matchDate,
  Value<bool> isFavorite,
  Value<String?> homeLogo,
  Value<String?> awayLogo,
});
typedef $$MatchTableUpdateCompanionBuilder = MatchCompanion Function({
  Value<int> id,
  Value<String> homeTeam,
  Value<String> awayTeam,
  Value<String> status,
  Value<int?> homeScore,
  Value<int?> awayScore,
  Value<String> matchDate,
  Value<bool> isFavorite,
  Value<String?> homeLogo,
  Value<String?> awayLogo,
});

class $$MatchTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MatchTable,
    MatchData,
    $$MatchTableFilterComposer,
    $$MatchTableOrderingComposer,
    $$MatchTableCreateCompanionBuilder,
    $$MatchTableUpdateCompanionBuilder> {
  $$MatchTableTableManager(_$AppDatabase db, $MatchTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$MatchTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$MatchTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> homeTeam = const Value.absent(),
            Value<String> awayTeam = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<int?> homeScore = const Value.absent(),
            Value<int?> awayScore = const Value.absent(),
            Value<String> matchDate = const Value.absent(),
            Value<bool> isFavorite = const Value.absent(),
            Value<String?> homeLogo = const Value.absent(),
            Value<String?> awayLogo = const Value.absent(),
          }) =>
              MatchCompanion(
            id: id,
            homeTeam: homeTeam,
            awayTeam: awayTeam,
            status: status,
            homeScore: homeScore,
            awayScore: awayScore,
            matchDate: matchDate,
            isFavorite: isFavorite,
            homeLogo: homeLogo,
            awayLogo: awayLogo,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String homeTeam,
            required String awayTeam,
            required String status,
            Value<int?> homeScore = const Value.absent(),
            Value<int?> awayScore = const Value.absent(),
            required String matchDate,
            Value<bool> isFavorite = const Value.absent(),
            Value<String?> homeLogo = const Value.absent(),
            Value<String?> awayLogo = const Value.absent(),
          }) =>
              MatchCompanion.insert(
            id: id,
            homeTeam: homeTeam,
            awayTeam: awayTeam,
            status: status,
            homeScore: homeScore,
            awayScore: awayScore,
            matchDate: matchDate,
            isFavorite: isFavorite,
            homeLogo: homeLogo,
            awayLogo: awayLogo,
          ),
        ));
}

class $$MatchTableFilterComposer
    extends FilterComposer<_$AppDatabase, $MatchTable> {
  $$MatchTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get homeTeam => $state.composableBuilder(
      column: $state.table.homeTeam,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get awayTeam => $state.composableBuilder(
      column: $state.table.awayTeam,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get homeScore => $state.composableBuilder(
      column: $state.table.homeScore,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get awayScore => $state.composableBuilder(
      column: $state.table.awayScore,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get matchDate => $state.composableBuilder(
      column: $state.table.matchDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isFavorite => $state.composableBuilder(
      column: $state.table.isFavorite,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get homeLogo => $state.composableBuilder(
      column: $state.table.homeLogo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get awayLogo => $state.composableBuilder(
      column: $state.table.awayLogo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$MatchTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $MatchTable> {
  $$MatchTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get homeTeam => $state.composableBuilder(
      column: $state.table.homeTeam,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get awayTeam => $state.composableBuilder(
      column: $state.table.awayTeam,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get homeScore => $state.composableBuilder(
      column: $state.table.homeScore,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get awayScore => $state.composableBuilder(
      column: $state.table.awayScore,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get matchDate => $state.composableBuilder(
      column: $state.table.matchDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isFavorite => $state.composableBuilder(
      column: $state.table.isFavorite,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get homeLogo => $state.composableBuilder(
      column: $state.table.homeLogo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get awayLogo => $state.composableBuilder(
      column: $state.table.awayLogo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$MatchTableTableManager get match =>
      $$MatchTableTableManager(_db, _db.match);
}
