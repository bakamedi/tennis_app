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

late Database _db;
late StoreRef<Object?, Object?> _storeRef;

Future<void> injectDependencies() async {
  DatabaseFactory dbFactory = databaseFactoryIo;
  final appDir = await getApplicationDocumentsDirectory();
  await appDir.create(recursive: true);
  final databasePath = join(appDir.path, _dbName);
  _db = await dbFactory.openDatabase(databasePath);
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

  static final tennisRep = Provider<TennisRepository>(
    (ref) => TennisRepositoryImpl(
      localServiceDB: dbProvider.read(),
    ),
  );
}
