import 'package:sembast/sembast.dart';

const initalDB = {
  "fields": [
    {"id": "1", "state": "", "path": "assets/fields/clay.jpeg", "dates": []},
    {"id": "2", "state": "", "path": "assets/fields/grass.jpeg", "dates": []},
    {"id": "3", "state": "", "path": "assets/fields/grass.jpeg", "dates": []}
  ]
};

class LocalServiceDB {
  final Database _db;
  final StoreRef<Object?, Object?> _store;

  LocalServiceDB({
    required db,
    required store,
  })  : _db = db,
        _store = store;

  Future<List<RecordSnapshot<Object?, Object?>>> find() async {
    return await _store.find(_db);
  }

  Future<void> initializeDatabase() async {
    final count = await _store.count(_db);

    if (count == 0) {
      await _store.add(
        _db,
        initalDB,
      );
    }
  }
}
