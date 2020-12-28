// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_manager.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class User extends DataClass implements Insertable<User> {
  final int id;
  final String username;
  final String mail;
  final String country;
  final String language;
  User(
      {@required this.id,
      @required this.username,
      @required this.mail,
      @required this.country,
      @required this.language});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return User(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      username: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}username']),
      mail: stringType.mapFromDatabaseResponse(data['${effectivePrefix}mail']),
      country:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}country']),
      language: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}language']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || username != null) {
      map['username'] = Variable<String>(username);
    }
    if (!nullToAbsent || mail != null) {
      map['mail'] = Variable<String>(mail);
    }
    if (!nullToAbsent || country != null) {
      map['country'] = Variable<String>(country);
    }
    if (!nullToAbsent || language != null) {
      map['language'] = Variable<String>(language);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      username: username == null && nullToAbsent
          ? const Value.absent()
          : Value(username),
      mail: mail == null && nullToAbsent ? const Value.absent() : Value(mail),
      country: country == null && nullToAbsent
          ? const Value.absent()
          : Value(country),
      language: language == null && nullToAbsent
          ? const Value.absent()
          : Value(language),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      username: serializer.fromJson<String>(json['username']),
      mail: serializer.fromJson<String>(json['mail']),
      country: serializer.fromJson<String>(json['country']),
      language: serializer.fromJson<String>(json['language']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'username': serializer.toJson<String>(username),
      'mail': serializer.toJson<String>(mail),
      'country': serializer.toJson<String>(country),
      'language': serializer.toJson<String>(language),
    };
  }

  User copyWith(
          {int id,
          String username,
          String mail,
          String country,
          String language}) =>
      User(
        id: id ?? this.id,
        username: username ?? this.username,
        mail: mail ?? this.mail,
        country: country ?? this.country,
        language: language ?? this.language,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('mail: $mail, ')
          ..write('country: $country, ')
          ..write('language: $language')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(username.hashCode,
          $mrjc(mail.hashCode, $mrjc(country.hashCode, language.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.username == this.username &&
          other.mail == this.mail &&
          other.country == this.country &&
          other.language == this.language);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> username;
  final Value<String> mail;
  final Value<String> country;
  final Value<String> language;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.username = const Value.absent(),
    this.mail = const Value.absent(),
    this.country = const Value.absent(),
    this.language = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    @required String username,
    @required String mail,
    @required String country,
    @required String language,
  })  : username = Value(username),
        mail = Value(mail),
        country = Value(country),
        language = Value(language);
  static Insertable<User> custom({
    Expression<int> id,
    Expression<String> username,
    Expression<String> mail,
    Expression<String> country,
    Expression<String> language,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (username != null) 'username': username,
      if (mail != null) 'mail': mail,
      if (country != null) 'country': country,
      if (language != null) 'language': language,
    });
  }

  UsersCompanion copyWith(
      {Value<int> id,
      Value<String> username,
      Value<String> mail,
      Value<String> country,
      Value<String> language}) {
    return UsersCompanion(
      id: id ?? this.id,
      username: username ?? this.username,
      mail: mail ?? this.mail,
      country: country ?? this.country,
      language: language ?? this.language,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (mail.present) {
      map['mail'] = Variable<String>(mail.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('mail: $mail, ')
          ..write('country: $country, ')
          ..write('language: $language')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  GeneratedTextColumn _username;
  @override
  GeneratedTextColumn get username => _username ??= _constructUsername();
  GeneratedTextColumn _constructUsername() {
    return GeneratedTextColumn(
      'username',
      $tableName,
      false,
    );
  }

  final VerificationMeta _mailMeta = const VerificationMeta('mail');
  GeneratedTextColumn _mail;
  @override
  GeneratedTextColumn get mail => _mail ??= _constructMail();
  GeneratedTextColumn _constructMail() {
    return GeneratedTextColumn(
      'mail',
      $tableName,
      false,
    );
  }

  final VerificationMeta _countryMeta = const VerificationMeta('country');
  GeneratedTextColumn _country;
  @override
  GeneratedTextColumn get country => _country ??= _constructCountry();
  GeneratedTextColumn _constructCountry() {
    return GeneratedTextColumn(
      'country',
      $tableName,
      false,
    );
  }

  final VerificationMeta _languageMeta = const VerificationMeta('language');
  GeneratedTextColumn _language;
  @override
  GeneratedTextColumn get language => _language ??= _constructLanguage();
  GeneratedTextColumn _constructLanguage() {
    return GeneratedTextColumn(
      'language',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, username, mail, country, language];
  @override
  $UsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'users';
  @override
  final String actualTableName = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username'], _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('mail')) {
      context.handle(
          _mailMeta, mail.isAcceptableOrUnknown(data['mail'], _mailMeta));
    } else if (isInserting) {
      context.missing(_mailMeta);
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country'], _countryMeta));
    } else if (isInserting) {
      context.missing(_countryMeta);
    }
    if (data.containsKey('language')) {
      context.handle(_languageMeta,
          language.isAcceptableOrUnknown(data['language'], _languageMeta));
    } else if (isInserting) {
      context.missing(_languageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return User.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $UsersTable _users;
  $UsersTable get users => _users ??= $UsersTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users];
}
