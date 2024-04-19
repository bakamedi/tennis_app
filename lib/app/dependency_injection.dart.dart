// ignore_for_file: library_prefixes

import 'package:flutter_meedu/providers.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

import 'data/data_source/local/local_service_db.dart';

const String _dbPath = 'tennis.db';

late Database _db;
late StoreRef<Object?, Object?> _storeRef;

Future<void> injectDependencies() async {
  DatabaseFactory dbFactory = databaseFactoryIo;
  _db = await dbFactory.openDatabase(_dbPath);
  _storeRef = StoreRef.main();
}

final dbProvider = Provider(
  (ref) => LocalServiceDB(
    db: _db,
    store: _storeRef,
  ),
);

class Repositories {
  Repositories._();
}
