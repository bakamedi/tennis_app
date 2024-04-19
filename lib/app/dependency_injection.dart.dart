// ignore_for_file: library_prefixes

import 'package:flutter_meedu/providers.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

import 'data/data_source/local/local_service_db.dart';
import 'data/repositories_impl/tennis_repository_impl.dart';
import 'domain/repositories/tennis_repository.dart';

const String _dbName = 'tennis.db';

const initalDB = {
  "fields": [
    {"id": "1", "state": "", "path": "assets/fields/clay.jpeg", "dates": []},
    {"id": "2", "state": "", "path": "assets/fields/grass.jpeg", "dates": []},
    {"id": "3", "state": "", "path": "assets/fields/grass.jpeg", "dates": []}
  ]
};

late Database _db;
late StoreRef<Object?, Object?> _storeRef;
late Object? _key;

Future<void> injectDependencies() async {
  DatabaseFactory dbFactory = databaseFactoryIo;
  final appDir = await getApplicationDocumentsDirectory();
  await appDir.create(recursive: true);
  final databasePath = join(appDir.path, _dbName);
  _db = await dbFactory.openDatabase(databasePath);
  _storeRef = StoreRef.main();
  _key = await _storeRef.add(
    _db,
    initalDB,
  );
}

final dbProvider = Provider(
  (ref) => LocalServiceDB(
    db: _db,
    store: _storeRef,
    key: _key,
  ),
);

class Repositories {
  Repositories._();

  static final tennisRep = Provider<TennisRepository>(
    (ref) => TennisRepositoryImpl(
      localServiceDB: dbProvider.read(),
    ),
  );
}
