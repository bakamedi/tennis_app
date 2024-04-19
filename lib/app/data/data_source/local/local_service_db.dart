import 'package:sembast/sembast.dart';

class LocalServiceDB {
  final Database _db;
  final StoreRef<Object?, Object?> _store;
  final Object? _key;

  LocalServiceDB({
    required db,
    required store,
    required key,
  })  : _db = db,
        _store = store,
        _key = key;

  StoreRef<Object?, Object?> get store => _store;

  Future<List<RecordSnapshot<Object?, Object?>>> find() async {
    return await _store.find(_db);
  }
}
