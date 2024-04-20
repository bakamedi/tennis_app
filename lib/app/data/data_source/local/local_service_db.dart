import 'dart:convert';

import 'package:sembast/sembast.dart';

import '../../../domain/models/field_tennis_model.dart';

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

  Future<TennisFieldModel> findAll() async {
    final record = (await _store.find(_db)).first;
    final values = json.encode(record.value);
    return tennisFieldModelFromJson(values);
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
